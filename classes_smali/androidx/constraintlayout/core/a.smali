.class public final Landroidx/constraintlayout/core/a;
.super Ljava/lang/Object;
.source "ArrayLinkedVariables.java"

# interfaces
.implements Landroidx/constraintlayout/core/b$a;


# instance fields
.field public a:I

.field public final b:Landroidx/constraintlayout/core/b;

.field public final c:Lt/a;

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[F

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/b;Lt/a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/a;->a:I

    const/16 v1, 0x8

    iput v1, p0, Landroidx/constraintlayout/core/a;->d:I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/a;->e:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/a;->g:[F

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/a;->h:I

    iput v1, p0, Landroidx/constraintlayout/core/a;->i:I

    iput-boolean v0, p0, Landroidx/constraintlayout/core/a;->j:Z

    iput-object p1, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    iput-object p2, p0, Landroidx/constraintlayout/core/a;->c:Lt/a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 8

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    return v2

    :cond_7
    move v3, v2

    :goto_8
    if-eq v0, v1, :cond_1f

    iget v4, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v3, v4, :cond_1f

    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-ne v4, v5, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    iget-object v4, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_1f
    return v2
.end method

.method public final b(Landroidx/constraintlayout/core/b;Z)F
    .registers 8

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v0

    iget-object v1, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, v1, p2}, Landroidx/constraintlayout/core/a;->h(Landroidx/constraintlayout/core/SolverVariable;Z)F

    iget-object p1, p1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_23

    invoke-interface {p1, v2}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    invoke-interface {p1, v3}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {p0, v3, v4, p2}, Landroidx/constraintlayout/core/a;->e(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    return v0
.end method

.method public final c(Landroidx/constraintlayout/core/SolverVariable;F)V
    .registers 11

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/core/a;->h(Landroidx/constraintlayout/core/SolverVariable;Z)F

    return-void

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_44

    iput v2, p0, Landroidx/constraintlayout/core/a;->h:I

    iget-object v0, p0, Landroidx/constraintlayout/core/a;->g:[F

    aput p2, v0, v2

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aput v0, p2, v2

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aput v3, p2, v2

    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-nez p1, :cond_43

    iget p1, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v0, p2

    if-lt p1, v0, :cond_43

    iput-boolean v1, p0, Landroidx/constraintlayout/core/a;->j:Z

    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_43
    return-void

    :cond_44
    move v4, v2

    move v5, v3

    :goto_46
    if-eq v0, v3, :cond_63

    iget v6, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v4, v6, :cond_63

    iget-object v6, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-ne v6, v7, :cond_59

    iget-object p1, p0, Landroidx/constraintlayout/core/a;->g:[F

    aput p2, p1, v0

    return-void

    :cond_59
    if-ge v6, v7, :cond_5c

    move v5, v0

    :cond_5c
    iget-object v6, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_63
    iget v0, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/lit8 v4, v0, 0x1

    iget-boolean v6, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-eqz v6, :cond_74

    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v6, v4, v0

    if-ne v6, v3, :cond_72

    goto :goto_75

    :cond_72
    array-length v0, v4

    goto :goto_75

    :cond_74
    move v0, v4

    :goto_75
    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v6, v4

    if-lt v0, v6, :cond_8e

    iget v6, p0, Landroidx/constraintlayout/core/a;->a:I

    array-length v4, v4

    if-ge v6, v4, :cond_8e

    move v4, v2

    :goto_80
    iget-object v6, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v7, v6

    if-ge v4, v7, :cond_8e

    aget v6, v6, v4

    if-ne v6, v3, :cond_8b

    move v0, v4

    goto :goto_8e

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    :cond_8e
    :goto_8e
    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v6, v4

    if-lt v0, v6, :cond_bc

    array-length v0, v4

    iget v4, p0, Landroidx/constraintlayout/core/a;->d:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/core/a;->d:I

    iput-boolean v2, p0, Landroidx/constraintlayout/core/a;->j:Z

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/a;->i:I

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->g:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/a;->g:[F

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget v4, p0, Landroidx/constraintlayout/core/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    iget v4, p0, Landroidx/constraintlayout/core/a;->d:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    :cond_bc
    iget-object v2, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget v4, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aput v4, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->g:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_d1

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v2, p2, v5

    aput v2, p2, v0

    aput v0, p2, v5

    goto :goto_d9

    :cond_d1
    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    iget v2, p0, Landroidx/constraintlayout/core/a;->h:I

    aput v2, p2, v0

    iput v0, p0, Landroidx/constraintlayout/core/a;->h:I

    :goto_d9
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    iget-boolean p2, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-nez p2, :cond_f1

    iget p2, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/2addr p2, v1

    iput p2, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_f1
    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v0, p2

    if-lt p1, v0, :cond_f8

    iput-boolean v1, p0, Landroidx/constraintlayout/core/a;->j:Z

    :cond_f8
    iget p1, p0, Landroidx/constraintlayout/core/a;->i:I

    array-length v0, p2

    if-lt p1, v0, :cond_103

    iput-boolean v1, p0, Landroidx/constraintlayout/core/a;->j:Z

    array-length p1, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_103
    return-void
.end method

.method public final clear()V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_23

    iget v4, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v2, v4, :cond_23

    iget-object v3, p0, Landroidx/constraintlayout/core/a;->c:Lt/a;

    iget-object v3, v3, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1c

    iget-object v4, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/SolverVariable;->b(Landroidx/constraintlayout/core/b;)V

    :cond_1c
    iget-object v3, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_23
    iput v3, p0, Landroidx/constraintlayout/core/a;->h:I

    iput v3, p0, Landroidx/constraintlayout/core/a;->i:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/a;->j:Z

    iput v1, p0, Landroidx/constraintlayout/core/a;->a:I

    return-void
.end method

.method public final d(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v1, v2, :cond_1e

    if-ne v1, p1, :cond_17

    iget-object p1, p0, Landroidx/constraintlayout/core/a;->c:Lt/a;

    iget-object p1, p1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v0, v1, v0

    aget-object p1, p1, v0

    return-object p1

    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Landroidx/constraintlayout/core/SolverVariable;FZ)V
    .registers 14

    const v0, -0x457ced91  # -0.001f

    cmpl-float v1, p2, v0

    const v2, 0x3a83126f  # 0.001f

    if-lez v1, :cond_f

    cmpg-float v1, p2, v2

    if-gez v1, :cond_f

    return-void

    :cond_f
    iget v1, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v4, :cond_4a

    iput v3, p0, Landroidx/constraintlayout/core/a;->h:I

    iget-object p3, p0, Landroidx/constraintlayout/core/a;->g:[F

    aput p2, p3, v3

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget p3, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aput p3, p2, v3

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aput v4, p2, v3

    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    add-int/2addr p2, v5

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-nez p1, :cond_49

    iget p1, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length p3, p2

    if-lt p1, p3, :cond_49

    iput-boolean v5, p0, Landroidx/constraintlayout/core/a;->j:Z

    array-length p1, p2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_49
    return-void

    :cond_4a
    move v6, v3

    move v7, v4

    :goto_4c
    if-eq v1, v4, :cond_a2

    iget v8, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v6, v8, :cond_a2

    iget-object v8, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v8, v8, v1

    iget v9, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-ne v8, v9, :cond_98

    iget-object v3, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget v4, v3, v1

    add-float/2addr v4, p2

    cmpl-float p2, v4, v0

    const/4 v0, 0x0

    if-lez p2, :cond_69

    cmpg-float p2, v4, v2

    if-gez p2, :cond_69

    move v4, v0

    :cond_69
    aput v4, v3, v1

    cmpl-float p2, v4, v0

    if-nez p2, :cond_97

    iget p2, p0, Landroidx/constraintlayout/core/a;->h:I

    if-ne v1, p2, :cond_7a

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget p2, p2, v1

    iput p2, p0, Landroidx/constraintlayout/core/a;->h:I

    goto :goto_80

    :cond_7a
    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, p2, v1

    aput v0, p2, v7

    :goto_80
    if-eqz p3, :cond_87

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->b(Landroidx/constraintlayout/core/b;)V

    :cond_87
    iget-boolean p2, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-eqz p2, :cond_8d

    iput v1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_8d
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    sub-int/2addr p2, v5

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    :cond_97
    return-void

    :cond_98
    if-ge v8, v9, :cond_9b

    move v7, v1

    :cond_9b
    iget-object v8, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v1, v8, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_a2
    iget p3, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/lit8 v0, p3, 0x1

    iget-boolean v1, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-eqz v1, :cond_b3

    iget-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v1, v0, p3

    if-ne v1, v4, :cond_b1

    goto :goto_b4

    :cond_b1
    array-length p3, v0

    goto :goto_b4

    :cond_b3
    move p3, v0

    :goto_b4
    iget-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v1, v0

    if-lt p3, v1, :cond_cd

    iget v1, p0, Landroidx/constraintlayout/core/a;->a:I

    array-length v0, v0

    if-ge v1, v0, :cond_cd

    move v0, v3

    :goto_bf
    iget-object v1, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_cd

    aget v1, v1, v0

    if-ne v1, v4, :cond_ca

    move p3, v0

    goto :goto_cd

    :cond_ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_cd
    :goto_cd
    iget-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length v1, v0

    if-lt p3, v1, :cond_fb

    array-length p3, v0

    iget v0, p0, Landroidx/constraintlayout/core/a;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/a;->d:I

    iput-boolean v3, p0, Landroidx/constraintlayout/core/a;->j:Z

    add-int/lit8 v1, p3, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/a;->i:I

    iget-object v1, p0, Landroidx/constraintlayout/core/a;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/a;->g:[F

    iget-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget v1, p0, Landroidx/constraintlayout/core/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget-object v0, p0, Landroidx/constraintlayout/core/a;->f:[I

    iget v1, p0, Landroidx/constraintlayout/core/a;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/a;->f:[I

    :cond_fb
    iget-object v0, p0, Landroidx/constraintlayout/core/a;->e:[I

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aput v1, v0, p3

    iget-object v0, p0, Landroidx/constraintlayout/core/a;->g:[F

    aput p2, v0, p3

    if-eq v7, v4, :cond_110

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, p2, v7

    aput v0, p2, p3

    aput p3, p2, v7

    goto :goto_118

    :cond_110
    iget-object p2, p0, Landroidx/constraintlayout/core/a;->f:[I

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    aput v0, p2, p3

    iput p3, p0, Landroidx/constraintlayout/core/a;->h:I

    :goto_118
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    add-int/2addr p2, v5

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    iget-boolean p1, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-nez p1, :cond_130

    iget p1, p0, Landroidx/constraintlayout/core/a;->i:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_130
    iget p1, p0, Landroidx/constraintlayout/core/a;->i:I

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->e:[I

    array-length p3, p2

    if-lt p1, p3, :cond_13d

    iput-boolean v5, p0, Landroidx/constraintlayout/core/a;->j:Z

    array-length p1, p2

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_13d
    return-void
.end method

.method public final f()V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    iget v2, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000  # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1a
    return-void
.end method

.method public final g(I)F
    .registers 5

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v1, v2, :cond_18

    if-ne v1, p1, :cond_11

    iget-object p1, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget p1, p1, v0

    return p1

    :cond_11
    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public final getCurrentSize()I
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/core/a;->a:I

    return v0
.end method

.method public final h(Landroidx/constraintlayout/core/SolverVariable;Z)F
    .registers 11

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v3, 0x0

    move v4, v2

    :goto_9
    if-eq v0, v2, :cond_52

    iget v5, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v3, v5, :cond_52

    iget-object v5, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v5, v5, v0

    iget v6, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-ne v5, v6, :cond_48

    iget v1, p0, Landroidx/constraintlayout/core/a;->h:I

    if-ne v0, v1, :cond_22

    iget-object v1, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/a;->h:I

    goto :goto_28

    :cond_22
    iget-object v1, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v3, v1, v0

    aput v3, v1, v4

    :goto_28
    if-eqz p2, :cond_2f

    iget-object p2, p0, Landroidx/constraintlayout/core/a;->b:Landroidx/constraintlayout/core/b;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->b(Landroidx/constraintlayout/core/b;)V

    :cond_2f
    iget p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    add-int/2addr p2, v2

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iget p1, p0, Landroidx/constraintlayout/core/a;->a:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/core/a;->a:I

    iget-object p1, p0, Landroidx/constraintlayout/core/a;->e:[I

    aput v2, p1, v0

    iget-boolean p1, p0, Landroidx/constraintlayout/core/a;->j:Z

    if-eqz p1, :cond_43

    iput v0, p0, Landroidx/constraintlayout/core/a;->i:I

    :cond_43
    iget-object p1, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget p1, p1, v0

    return p1

    :cond_48
    iget-object v4, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_9

    :cond_52
    return v1
.end method

.method public final i(Landroidx/constraintlayout/core/SolverVariable;)F
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    iget v2, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-ne v2, v3, :cond_17

    iget-object p1, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget p1, p1, v0

    return p1

    :cond_17
    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final j(F)V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const/4 v1, 0x0

    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_18

    iget v2, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    iget-object v2, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/a;->h:I

    const-string v1, ""

    const/4 v2, 0x0

    :goto_5
    const/4 v3, -0x1

    if-eq v0, v3, :cond_42

    iget v3, p0, Landroidx/constraintlayout/core/a;->a:I

    if-ge v2, v3, :cond_42

    const-string v3, " -> "

    invoke-static {v1, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/core/a;->g:[F

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/core/a;->c:Lt/a;

    iget-object v3, v3, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/core/a;->e:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/constraintlayout/core/a;->f:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_42
    return-object v1
.end method
