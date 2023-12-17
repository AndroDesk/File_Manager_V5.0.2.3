.class public final Landroidx/constraintlayout/core/widgets/a;
.super Lv/b;
.source "Barrier.java"


# instance fields
.field public u0:I

.field public v0:Z

.field public w0:I

.field public x0:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lv/b;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final O()Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    move v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_4
    iget v4, p0, Lv/b;->t0:I

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    if-ge v2, v4, :cond_37

    .line 11
    iget-object v4, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 13
    aget-object v4, v4, v2

    .line 15
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 17
    if-nez v7, :cond_19

    .line 19
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    .line 22
    move-result v7

    .line 23
    if-nez v7, :cond_19

    .line 25
    goto :goto_34

    .line 26
    :cond_19
    iget v7, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 28
    if-eqz v7, :cond_1f

    .line 30
    if-ne v7, v1, :cond_27

    .line 32
    :cond_1f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y()Z

    .line 35
    move-result v7

    .line 36
    if-nez v7, :cond_27

    .line 38
    :goto_25
    move v3, v0

    .line 39
    goto :goto_34

    .line 40
    :cond_27
    iget v7, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 42
    if-eq v7, v6, :cond_2d

    .line 44
    if-ne v7, v5, :cond_34

    .line 46
    :cond_2d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z()Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_34

    .line 52
    goto :goto_25

    .line 53
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_4

    .line 56
    :cond_37
    if-eqz v3, :cond_e6

    .line 58
    if-lez v4, :cond_e6

    .line 60
    move v2, v0

    .line 61
    move v3, v2

    .line 62
    :goto_3d
    iget v4, p0, Lv/b;->t0:I

    .line 64
    if-ge v0, v4, :cond_d2

    .line 66
    iget-object v4, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    aget-object v4, v4, v0

    .line 70
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 72
    if-nez v7, :cond_51

    .line 74
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_51

    .line 80
    goto/16 :goto_ce

    .line 82
    :cond_51
    if-nez v3, :cond_89

    .line 84
    iget v3, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 86
    if-nez v3, :cond_62

    .line 88
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 90
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 97
    move-result v2

    .line 98
    goto :goto_88

    .line 99
    :cond_62
    if-ne v3, v1, :cond_6f

    .line 101
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 103
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 110
    move-result v2

    .line 111
    goto :goto_88

    .line 112
    :cond_6f
    if-ne v3, v6, :cond_7c

    .line 114
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 116
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 123
    move-result v2

    .line 124
    goto :goto_88

    .line 125
    :cond_7c
    if-ne v3, v5, :cond_88

    .line 127
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 129
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 136
    move-result v2

    .line 137
    :cond_88
    :goto_88
    move v3, v1

    .line 138
    :cond_89
    iget v7, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 140
    if-nez v7, :cond_9c

    .line 142
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 144
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 151
    move-result v4

    .line 152
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 155
    move-result v2

    .line 156
    goto :goto_ce

    .line 157
    :cond_9c
    if-ne v7, v1, :cond_ad

    .line 159
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 161
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 168
    move-result v4

    .line 169
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 172
    move-result v2

    .line 173
    goto :goto_ce

    .line 174
    :cond_ad
    if-ne v7, v6, :cond_be

    .line 176
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 178
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 185
    move-result v4

    .line 186
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 189
    move-result v2

    .line 190
    goto :goto_ce

    .line 191
    :cond_be
    if-ne v7, v5, :cond_ce

    .line 193
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 195
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 202
    move-result v4

    .line 203
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 206
    move-result v2

    .line 207
    :cond_ce
    :goto_ce
    add-int/lit8 v0, v0, 0x1

    .line 209
    goto/16 :goto_3d

    .line 211
    :cond_d2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 213
    add-int/2addr v2, v0

    .line 214
    iget v0, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 216
    if-eqz v0, :cond_e0

    .line 218
    if-ne v0, v1, :cond_dc

    .line 220
    goto :goto_e0

    .line 221
    :cond_dc
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->G(II)V

    .line 224
    goto :goto_e3

    .line 225
    :cond_e0
    :goto_e0
    invoke-virtual {p0, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F(II)V

    .line 228
    :goto_e3
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 230
    return v1

    .line 231
    :cond_e6
    return v0
.end method

.method public final P()I
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_10

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_f

    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_f

    .line 14
    const/4 v0, -0x1

    .line 15
    return v0

    .line 16
    :cond_f
    return v1

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final b(Landroidx/constraintlayout/core/c;Z)V
    .registers 16

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 5
    const/4 v1, 0x0

    .line 6
    aput-object v0, p2, v1

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    const/4 v2, 0x2

    .line 11
    aput-object v0, p2, v2

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v0, p2, v3

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    const/4 v4, 0x3

    .line 21
    aput-object v0, p2, v4

    .line 23
    move p2, v1

    .line 24
    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    array-length v5, v0

    .line 27
    if-ge p2, v5, :cond_27

    .line 29
    aget-object v0, v0, p2

    .line 31
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 39
    goto :goto_17

    .line 40
    :cond_27
    iget p2, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 42
    if-ltz p2, :cond_210

    .line 44
    const/4 v5, 0x4

    .line 45
    if-ge p2, v5, :cond_210

    .line 47
    aget-object p2, v0, p2

    .line 49
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 51
    if-nez v0, :cond_37

    .line 53
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/a;->O()Z

    .line 56
    :cond_37
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 58
    if-eqz v0, :cond_6e

    .line 60
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 62
    iget p2, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 64
    if-eqz p2, :cond_5b

    .line 66
    if-ne p2, v3, :cond_44

    .line 68
    goto :goto_5b

    .line 69
    :cond_44
    if-eq p2, v2, :cond_48

    .line 71
    if-ne p2, v4, :cond_6d

    .line 73
    :cond_48
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 75
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 77
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 79
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 82
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 84
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 86
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 88
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 91
    goto :goto_6d

    .line 92
    :cond_5b
    :goto_5b
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 94
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 96
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 98
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 101
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 103
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 105
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 107
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 110
    :cond_6d
    :goto_6d
    return-void

    .line 111
    :cond_6e
    move v0, v1

    .line 112
    :goto_6f
    iget v6, p0, Lv/b;->t0:I

    .line 114
    if-ge v0, v6, :cond_ba

    .line 116
    iget-object v6, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    aget-object v6, v6, v0

    .line 120
    iget-boolean v7, p0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 122
    if-nez v7, :cond_82

    .line 124
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_82

    .line 130
    goto :goto_b7

    .line 131
    :cond_82
    iget v7, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 133
    if-eqz v7, :cond_88

    .line 135
    if-ne v7, v3, :cond_9d

    .line 137
    :cond_88
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 139
    aget-object v8, v8, v1

    .line 141
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    if-ne v8, v9, :cond_9d

    .line 145
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 147
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 149
    if-eqz v8, :cond_9d

    .line 151
    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 153
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 155
    if-eqz v8, :cond_9d

    .line 157
    goto :goto_b5

    .line 158
    :cond_9d
    if-eq v7, v2, :cond_a1

    .line 160
    if-ne v7, v4, :cond_b7

    .line 162
    :cond_a1
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 164
    aget-object v7, v7, v3

    .line 166
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    if-ne v7, v8, :cond_b7

    .line 170
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 172
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 174
    if-eqz v7, :cond_b7

    .line 176
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 178
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 180
    if-eqz v6, :cond_b7

    .line 182
    :goto_b5
    move v0, v3

    .line 183
    goto :goto_bb

    .line 184
    :cond_b7
    :goto_b7
    add-int/lit8 v0, v0, 0x1

    .line 186
    goto :goto_6f

    .line 187
    :cond_ba
    move v0, v1

    .line 188
    :goto_bb
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 190
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()Z

    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_ce

    .line 196
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 198
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()Z

    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_cc

    .line 204
    goto :goto_ce

    .line 205
    :cond_cc
    move v6, v1

    .line 206
    goto :goto_cf

    .line 207
    :cond_ce
    :goto_ce
    move v6, v3

    .line 208
    :goto_cf
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 210
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()Z

    .line 213
    move-result v7

    .line 214
    if-nez v7, :cond_e2

    .line 216
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 218
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()Z

    .line 221
    move-result v7

    .line 222
    if-eqz v7, :cond_e0

    .line 224
    goto :goto_e2

    .line 225
    :cond_e0
    move v7, v1

    .line 226
    goto :goto_e3

    .line 227
    :cond_e2
    :goto_e2
    move v7, v3

    .line 228
    :goto_e3
    if-nez v0, :cond_f9

    .line 230
    iget v0, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 232
    if-nez v0, :cond_eb

    .line 234
    if-nez v6, :cond_f7

    .line 236
    :cond_eb
    if-ne v0, v2, :cond_ef

    .line 238
    if-nez v7, :cond_f7

    .line 240
    :cond_ef
    if-ne v0, v3, :cond_f3

    .line 242
    if-nez v6, :cond_f7

    .line 244
    :cond_f3
    if-ne v0, v4, :cond_f9

    .line 246
    if-eqz v7, :cond_f9

    .line 248
    :cond_f7
    move v0, v3

    .line 249
    goto :goto_fa

    .line 250
    :cond_f9
    move v0, v1

    .line 251
    :goto_fa
    const/4 v6, 0x5

    .line 252
    if-nez v0, :cond_fe

    .line 254
    move v6, v5

    .line 255
    :cond_fe
    move v0, v1

    .line 256
    :goto_ff
    iget v7, p0, Lv/b;->t0:I

    .line 258
    if-ge v0, v7, :cond_16c

    .line 260
    iget-object v7, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 262
    aget-object v7, v7, v0

    .line 264
    iget-boolean v8, p0, Landroidx/constraintlayout/core/widgets/a;->v0:Z

    .line 266
    if-nez v8, :cond_112

    .line 268
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c()Z

    .line 271
    move-result v8

    .line 272
    if-nez v8, :cond_112

    .line 274
    goto :goto_169

    .line 275
    :cond_112
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 277
    iget v9, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 279
    aget-object v8, v8, v9

    .line 281
    invoke-virtual {p1, v8}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 284
    move-result-object v8

    .line 285
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 287
    iget v9, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 289
    aget-object v7, v7, v9

    .line 291
    iput-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 293
    iget-object v10, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 295
    if-eqz v10, :cond_130

    .line 297
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 299
    if-ne v10, p0, :cond_130

    .line 301
    iget v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 303
    add-int/2addr v7, v1

    .line 304
    goto :goto_131

    .line 305
    :cond_130
    move v7, v1

    .line 306
    :goto_131
    if-eqz v9, :cond_14c

    .line 308
    if-ne v9, v2, :cond_136

    .line 310
    goto :goto_14c

    .line 311
    :cond_136
    iget-object v9, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 313
    iget v10, p0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 315
    add-int/2addr v10, v7

    .line 316
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 319
    move-result-object v11

    .line 320
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    .line 323
    move-result-object v12

    .line 324
    iput v1, v12, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 326
    invoke-virtual {v11, v9, v8, v12, v10}, Landroidx/constraintlayout/core/b;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 329
    invoke-virtual {p1, v11}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 332
    goto :goto_161

    .line 333
    :cond_14c
    :goto_14c
    iget-object v9, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 335
    iget v10, p0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 337
    sub-int/2addr v10, v7

    .line 338
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 341
    move-result-object v11

    .line 342
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    .line 345
    move-result-object v12

    .line 346
    iput v1, v12, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 348
    invoke-virtual {v11, v9, v8, v12, v10}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 351
    invoke-virtual {p1, v11}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 354
    :goto_161
    iget-object v9, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 356
    iget v10, p0, Landroidx/constraintlayout/core/widgets/a;->w0:I

    .line 358
    add-int/2addr v10, v7

    .line 359
    invoke-virtual {p1, v9, v8, v10, v6}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 362
    :goto_169
    add-int/lit8 v0, v0, 0x1

    .line 364
    goto :goto_ff

    .line 365
    :cond_16c
    iget p2, p0, Landroidx/constraintlayout/core/widgets/a;->u0:I

    .line 367
    const/16 v0, 0x8

    .line 369
    if-nez p2, :cond_199

    .line 371
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 373
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 375
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 377
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 379
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 382
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 384
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 386
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 388
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 390
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 392
    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 395
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 397
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 399
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 401
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 403
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 405
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 408
    goto/16 :goto_210

    .line 410
    :cond_199
    if-ne p2, v3, :cond_1c1

    .line 412
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 414
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 416
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 420
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 423
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 425
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 427
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 429
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 431
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 433
    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 436
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 438
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 440
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 442
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 444
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 446
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 449
    goto :goto_210

    .line 450
    :cond_1c1
    if-ne p2, v2, :cond_1e9

    .line 452
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 454
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 456
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 458
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 460
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 463
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 465
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 467
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 469
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 471
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 473
    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 476
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 478
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 480
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 482
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 484
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 486
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 489
    goto :goto_210

    .line 490
    :cond_1e9
    if-ne p2, v4, :cond_210

    .line 492
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 494
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 496
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 498
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 500
    invoke-virtual {p1, p2, v2, v1, v0}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 503
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 505
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 507
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 509
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 511
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 513
    invoke-virtual {p1, p2, v0, v1, v5}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 516
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 518
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 522
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 524
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 526
    invoke-virtual {p1, p2, v0, v1, v1}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 529
    :cond_210
    :goto_210
    return-void
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "[Barrier] "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 9
    const-string v2, " {"

    .line 11
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    iget v2, p0, Lv/b;->t0:I

    .line 18
    if-ge v1, v2, :cond_2f

    .line 20
    iget-object v2, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    aget-object v2, v2, v1

    .line 24
    if-lez v1, :cond_1f

    .line 26
    const-string v3, ", "

    .line 28
    invoke-static {v0, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    :cond_1f
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_f

    .line 48
    :cond_2f
    const-string v1, "}"

    .line 50
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public final y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 3
    return v0
.end method

.method public final z()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/a;->x0:Z

    .line 3
    return v0
.end method
