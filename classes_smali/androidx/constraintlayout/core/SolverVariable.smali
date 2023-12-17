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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->g:[F

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/constraintlayout/core/b;

    iput-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/b;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    array-length v2, v0

    if-lt v1, v2, :cond_1f

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/b;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    return-void
.end method

.method public final b(Landroidx/constraintlayout/core/b;)V
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_20

    :goto_b
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_19

    iget-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_b

    :cond_19
    iget p1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    return-void

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_23
    return-void
.end method

.method public final c()V
    .registers 7

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_1e

    iget-object v4, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->l:I

    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Landroidx/constraintlayout/core/c;F)V
    .registers 6

    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    iget p2, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p2, :cond_18

    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, v0}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/SolverVariable;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    return-void
.end method

.method public final e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V
    .registers 7

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_10

    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->j:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->k:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
