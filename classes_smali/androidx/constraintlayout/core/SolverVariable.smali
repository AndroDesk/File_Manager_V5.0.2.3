.class public final Landroidx/constraintlayout/core/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/SolverVariable$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:Z

.field public g:[F

.field public h:[F

.field public i:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public j:[Landroidx/constraintlayout/core/b;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 14
    const/16 v1, 0x9

    .line 16
    new-array v2, v1, [F

    .line 18
    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->g:[F

    .line 20
    new-array v1, v1, [F

    .line 22
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 24
    const/16 v1, 0x10

    .line 26
    new-array v1, v1, [Landroidx/constraintlayout/core/b;

    .line 28
    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/b;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 4
    if-ge v0, v1, :cond_f

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 8
    aget-object v1, v1, v0

    .line 10
    if-ne v1, p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 18
    array-length v2, v0

    .line 19
    if-lt v1, v2, :cond_1f

    .line 21
    array-length v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x2

    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Landroidx/constraintlayout/core/b;

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 32
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 36
    aput-object p1, v0, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 42
    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/b;)V
    .registers 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    if-ge v1, v0, :cond_23

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 8
    aget-object v2, v2, v1

    .line 10
    if-ne v2, p1, :cond_20

    .line 12
    :goto_b
    add-int/lit8 p1, v0, -0x1

    .line 14
    if-ge v1, p1, :cond_19

    .line 16
    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 20
    aget-object v3, p1, v2

    .line 22
    aput-object v3, p1, v1

    .line 24
    move v1, v2

    .line 25
    goto :goto_b

    .line 26
    :cond_19
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 32
    return-void

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_3

    .line 36
    :cond_23
    return-void
.end method

.method public final c()V
    .registers 7

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 8
    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 18
    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 20
    move v3, v0

    .line 21
    :goto_14
    if-ge v3, v2, :cond_1e

    .line 23
    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v5, v4, v3

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_14

    .line 31
    :cond_1e
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 35
    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 42
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 5
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method

.method public final d(Landroidx/constraintlayout/core/c;F)V
    .registers 6

    .line 1
    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 3
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 6
    iget p2, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_c
    if-ge v1, p2, :cond_18

    .line 15
    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 17
    aget-object v2, v2, v1

    .line 19
    invoke-virtual {v2, p1, p0, v0}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_c

    .line 25
    :cond_18
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 27
    return-void
.end method

.method public final e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    if-ge v2, v0, :cond_10

    .line 7
    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    .line 9
    aget-object v3, v3, v2

    .line 11
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_4

    .line 17
    :cond_10
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    .line 19
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
