.class public final Landroidx/constraintlayout/core/widgets/e;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "Guideline.java"


# instance fields
.field public s0:F

.field public t0:I

.field public u0:I

.field public v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public w0:I

.field public x0:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 4
    const/high16 v0, -0x40800000  # -1.0f

    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 20
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 25
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    array-length v1, v1

    .line 35
    :goto_22
    if-ge v0, v1, :cond_2d

    .line 37
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 39
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 41
    aput-object v3, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_22

    .line 46
    :cond_2d
    return-void
.end method


# virtual methods
.method public final M(Landroidx/constraintlayout/core/c;Z)V
    .registers 5

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 14
    move-result p1

    .line 15
    iget p2, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p2, v0, :cond_25

    .line 21
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 23
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 25
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 34
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 37
    goto :goto_35

    .line 38
    :cond_25
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 40
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 44
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 51
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 54
    :goto_35
    return-void
.end method

.method public final N(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i(I)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/e;->x0:Z

    .line 9
    return-void
.end method

.method public final O(I)V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 8
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget p1, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_16

    .line 18
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 20
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 27
    :goto_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 36
    array-length p1, p1

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_25
    if-ge v0, p1, :cond_30

    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->S:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 42
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 44
    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_25

    .line 49
    :cond_30
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/c;Z)V
    .registers 10

    .line 1
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    check-cast p2, Landroidx/constraintlayout/core/widgets/d;

    .line 5
    if-nez p2, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 10
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 16
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v2, :cond_23

    .line 26
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 28
    aget-object v2, v2, v4

    .line 30
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 32
    if-ne v2, v5, :cond_23

    .line 34
    move v2, v3

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v2, v4

    .line 37
    :goto_24
    iget v5, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 39
    if-nez v5, :cond_43

    .line 41
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 43
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 49
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 52
    move-result-object v1

    .line 53
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 55
    if-eqz p2, :cond_41

    .line 57
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 59
    aget-object p2, p2, v3

    .line 61
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 63
    if-ne p2, v2, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v3, v4

    .line 67
    :goto_42
    move v2, v3

    .line 68
    :cond_43
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/e;->x0:Z

    .line 70
    const/4 v3, -0x1

    .line 71
    const/4 v5, 0x5

    .line 72
    if-eqz p2, :cond_81

    .line 74
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 76
    iget-boolean v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 78
    if-eqz v6, :cond_81

    .line 80
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 83
    move-result-object p2

    .line 84
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 86
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c()I

    .line 89
    move-result v6

    .line 90
    invoke-virtual {p1, p2, v6}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 93
    iget v6, p0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 95
    if-eq v6, v3, :cond_6a

    .line 97
    if-eqz v2, :cond_7e

    .line 99
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 106
    goto :goto_7e

    .line 107
    :cond_6a
    iget v6, p0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 109
    if-eq v6, v3, :cond_7e

    .line 111
    if-eqz v2, :cond_7e

    .line 113
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 124
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 127
    :cond_7e
    :goto_7e
    iput-boolean v4, p0, Landroidx/constraintlayout/core/widgets/e;->x0:Z

    .line 129
    return-void

    .line 130
    :cond_81
    iget p2, p0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 132
    const/16 v6, 0x8

    .line 134
    if-eq p2, v3, :cond_a0

    .line 136
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 138
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 145
    move-result-object v0

    .line 146
    iget v3, p0, Landroidx/constraintlayout/core/widgets/e;->t0:I

    .line 148
    invoke-virtual {p1, p2, v0, v3, v6}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 151
    if-eqz v2, :cond_e6

    .line 153
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 160
    goto :goto_e6

    .line 161
    :cond_a0
    iget p2, p0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 163
    if-eq p2, v3, :cond_c1

    .line 165
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 167
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 174
    move-result-object v1

    .line 175
    iget v3, p0, Landroidx/constraintlayout/core/widgets/e;->u0:I

    .line 177
    neg-int v3, v3

    .line 178
    invoke-virtual {p1, p2, v1, v3, v6}, Landroidx/constraintlayout/core/c;->e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 181
    if-eqz v2, :cond_e6

    .line 183
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 190
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/constraintlayout/core/c;->f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 193
    goto :goto_e6

    .line 194
    :cond_c1
    iget p2, p0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 196
    const/high16 v0, -0x40800000  # -1.0f

    .line 198
    cmpl-float p2, p2, v0

    .line 200
    if-eqz p2, :cond_e6

    .line 202
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 204
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 211
    move-result-object v1

    .line 212
    iget v2, p0, Landroidx/constraintlayout/core/widgets/e;->s0:F

    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 217
    move-result-object v3

    .line 218
    iget-object v4, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 220
    invoke-interface {v4, p2, v0}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 223
    iget-object p2, v3, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 225
    invoke-interface {p2, v1, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 228
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 231
    :cond_e6
    :goto_e6
    return-void
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/e$a;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1c

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p1, v1, :cond_1c

    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_15

    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_15

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    iget p1, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 24
    if-nez p1, :cond_23

    .line 26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    return-object p1

    .line 29
    :cond_1c
    iget p1, p0, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 31
    if-ne p1, v0, :cond_23

    .line 33
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 35
    return-object p1

    .line 36
    :cond_23
    :goto_23
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public final y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/e;->x0:Z

    .line 3
    return v0
.end method

.method public final z()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/e;->x0:Z

    .line 3
    return v0
.end method
