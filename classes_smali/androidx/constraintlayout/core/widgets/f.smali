.class public final Landroidx/constraintlayout/core/widgets/f;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 4
    sput-object v0, Landroidx/constraintlayout/core/widgets/f;->a:[Z

    .line 6
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 9

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 4
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 11
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v2, :cond_4f

    .line 16
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 18
    aget-object v0, v0, v1

    .line 20
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 22
    if-ne v0, v1, :cond_4f

    .line 24
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 26
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 31
    move-result v1

    .line 32
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 36
    sub-int/2addr v1, v4

    .line 37
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 39
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 50
    move-result-object v5

    .line 51
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 53
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 55
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 57
    invoke-virtual {p1, v4, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 60
    iget-object v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 62
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 64
    invoke-virtual {p1, v4, v1}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 67
    iput v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 69
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 71
    sub-int/2addr v1, v0

    .line 72
    iput v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 74
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 76
    if-ge v1, v0, :cond_4f

    .line 78
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:I

    .line 80
    :cond_4f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    const/4 v1, 0x1

    .line 83
    aget-object v0, v0, v1

    .line 85
    if-eq v0, v2, :cond_b2

    .line 87
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 89
    aget-object v0, v0, v1

    .line 91
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    if-ne v0, v1, :cond_b2

    .line 95
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 99
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 102
    move-result p0

    .line 103
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 105
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 107
    sub-int/2addr p0, v1

    .line 108
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 110
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 113
    move-result-object v2

    .line 114
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 116
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 118
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 121
    move-result-object v2

    .line 122
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 124
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 126
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 128
    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 131
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 133
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 135
    invoke-virtual {p1, v1, p0}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 138
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 140
    if-gtz v1, :cond_93

    .line 142
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 144
    const/16 v2, 0x8

    .line 146
    if-ne v1, v2, :cond_a5

    .line 148
    :cond_93
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 150
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/c;->k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 153
    move-result-object v2

    .line 154
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 156
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 160
    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 162
    add-int/2addr v2, v0

    .line 163
    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/core/c;->d(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 166
    :cond_a5
    iput v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 168
    iput v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 170
    sub-int/2addr p0, v0

    .line 171
    iput p0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 173
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 175
    if-ge p0, p1, :cond_b2

    .line 177
    iput p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 179
    :cond_b2
    return-void
.end method

.method public static final b(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method
