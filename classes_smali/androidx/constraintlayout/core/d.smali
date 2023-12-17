.class public final Landroidx/constraintlayout/core/d;
.super Landroidx/constraintlayout/core/b;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/d$b;
    }
.end annotation


# instance fields
.field public f:[Landroidx/constraintlayout/core/SolverVariable;

.field public g:[Landroidx/constraintlayout/core/SolverVariable;

.field public h:I

.field public i:Landroidx/constraintlayout/core/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lt/a;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    const/16 p1, 0x80

    new-array v0, p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/core/d;->h:I

    new-instance p1, Landroidx/constraintlayout/core/d$b;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    return-void
.end method


# virtual methods
.method public final a([Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 13

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_4
    iget v4, p0, Landroidx/constraintlayout/core/d;->h:I

    if-ge v2, v4, :cond_57

    iget-object v4, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v5, v4, v2

    iget v6, v5, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aget-boolean v6, p1, v6

    if-eqz v6, :cond_13

    goto :goto_54

    :cond_13
    iget-object v6, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    iput-object v5, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    const/16 v5, 0x8

    const/4 v7, 0x1

    if-ne v3, v0, :cond_36

    :goto_1c
    if-ltz v5, :cond_32

    iget-object v4, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v4, v4, v5

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-lez v9, :cond_2a

    goto :goto_32

    :cond_2a
    cmpg-float v4, v4, v8

    if-gez v4, :cond_2f

    goto :goto_33

    :cond_2f
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    :cond_32
    :goto_32
    move v7, v1

    :goto_33
    if-eqz v7, :cond_54

    goto :goto_53

    :cond_36
    aget-object v4, v4, v3

    :goto_38
    if-ltz v5, :cond_50

    iget-object v8, v4, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v8, v8, v5

    iget-object v9, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v9, v9, v5

    cmpl-float v10, v9, v8

    if-nez v10, :cond_4b

    add-int/lit8 v5, v5, -0x1

    goto :goto_38

    :cond_4b
    cmpg-float v4, v9, v8

    if-gez v4, :cond_50

    goto :goto_51

    :cond_50
    move v7, v1

    :goto_51
    if-eqz v7, :cond_54

    :goto_53
    move v3, v2

    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_57
    if-ne v3, v0, :cond_5b

    const/4 p1, 0x0

    return-object p1

    :cond_5b
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object p1, p1, v3

    return-object p1
.end method

.method public final e()Z
    .registers 2

    iget v0, p0, Landroidx/constraintlayout/core/d;->h:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v2, :cond_9

    return-void

    :cond_9
    iget-object v3, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v3}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v4

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v4, :cond_8e

    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/b$a;->g(I)F

    move-result v8

    iget-object v9, v0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    iput-object v7, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v10, v7, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    const v11, 0x38d1b717  # 1.0E-4f

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_59

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v12, :cond_4e

    iget-object v15, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v16, v15, v10

    iget-object v5, v2, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v5, v5, v10

    mul-float/2addr v5, v8

    add-float v5, v5, v16

    aput v5, v15, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_4a

    iget-object v5, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aput v13, v5, v10

    goto :goto_4b

    :cond_4a
    const/4 v14, 0x0

    :goto_4b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_4e
    if-eqz v14, :cond_57

    iget-object v5, v9, Landroidx/constraintlayout/core/d$b;->b:Landroidx/constraintlayout/core/d;

    iget-object v9, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_57
    const/4 v14, 0x0

    goto :goto_7e

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    if-ge v5, v12, :cond_7e

    iget-object v10, v2, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aget v10, v10, v5

    cmpl-float v15, v10, v13

    if-eqz v15, :cond_75

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v11

    if-gez v15, :cond_6e

    move v10, v13

    :cond_6e
    iget-object v15, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aput v10, v15, v5

    goto :goto_7b

    :cond_75
    iget-object v10, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    aput v13, v10, v5

    :goto_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_7e
    :goto_7e
    if-eqz v14, :cond_83

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_83
    iget v5, v0, Landroidx/constraintlayout/core/b;->b:F

    iget v7, v1, Landroidx/constraintlayout/core/b;->b:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    iput v7, v0, Landroidx/constraintlayout/core/b;->b:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_8e
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;)V

    return-void
.end method

.method public final j(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    iget v0, p0, Landroidx/constraintlayout/core/d;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_1f

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/d;->h:I

    if-le v2, v1, :cond_5d

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    if-le v0, v2, :cond_5d

    const/4 v0, 0x0

    move v2, v0

    :goto_35
    iget v3, p0, Landroidx/constraintlayout/core/d;->h:I

    if-ge v2, v3, :cond_44

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_44
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    new-instance v4, Landroidx/constraintlayout/core/d$a;

    invoke-direct {v4}, Landroidx/constraintlayout/core/d$a;-><init>()V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_4e
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    if-ge v0, v2, :cond_5d

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5d
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public final k(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_23

    :goto_c
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_1c

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_c

    :cond_1c
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/d;->h:I

    iput-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    return-void

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, " goal -> ("

    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_17
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    if-ge v1, v2, :cond_38

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    iput-object v2, v3, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_38
    return-object v0
.end method
