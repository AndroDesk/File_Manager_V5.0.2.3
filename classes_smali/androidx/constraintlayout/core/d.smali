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
.method public constructor <init>(Lt/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    .line 4
    const/16 p1, 0x80

    .line 6
    new-array v0, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 10
    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 12
    iput-object p1, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 17
    new-instance p1, Landroidx/constraintlayout/core/d$b;

    .line 19
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/d$b;-><init>(Landroidx/constraintlayout/core/d;)V

    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 24
    return-void
.end method


# virtual methods
.method public final a([Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    iget v4, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 7
    if-ge v2, v4, :cond_57

    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    aget-object v5, v4, v2

    .line 13
    iget v6, v5, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 15
    aget-boolean v6, p1, v6

    .line 17
    if-eqz v6, :cond_13

    .line 19
    goto :goto_54

    .line 20
    :cond_13
    iget-object v6, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 22
    iput-object v5, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    const/16 v5, 0x8

    .line 26
    const/4 v7, 0x1

    .line 27
    if-ne v3, v0, :cond_36

    .line 29
    :goto_1c
    if-ltz v5, :cond_32

    .line 31
    iget-object v4, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 33
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 35
    aget v4, v4, v5

    .line 37
    const/4 v8, 0x0

    .line 38
    cmpl-float v9, v4, v8

    .line 40
    if-lez v9, :cond_2a

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    cmpg-float v4, v4, v8

    .line 45
    if-gez v4, :cond_2f

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    add-int/lit8 v5, v5, -0x1

    .line 50
    goto :goto_1c

    .line 51
    :cond_32
    :goto_32
    move v7, v1

    .line 52
    :goto_33
    if-eqz v7, :cond_54

    .line 54
    goto :goto_53

    .line 55
    :cond_36
    aget-object v4, v4, v3

    .line 57
    :goto_38
    if-ltz v5, :cond_50

    .line 59
    iget-object v8, v4, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 61
    aget v8, v8, v5

    .line 63
    iget-object v9, v6, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 65
    iget-object v9, v9, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 67
    aget v9, v9, v5

    .line 69
    cmpl-float v10, v9, v8

    .line 71
    if-nez v10, :cond_4b

    .line 73
    add-int/lit8 v5, v5, -0x1

    .line 75
    goto :goto_38

    .line 76
    :cond_4b
    cmpg-float v4, v9, v8

    .line 78
    if-gez v4, :cond_50

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v7, v1

    .line 82
    :goto_51
    if-eqz v7, :cond_54

    .line 84
    :goto_53
    move v3, v2

    .line 85
    :cond_54
    :goto_54
    add-int/lit8 v2, v2, 0x1

    .line 87
    goto :goto_4

    .line 88
    :cond_57
    if-ne v3, v0, :cond_5b

    .line 90
    const/4 p1, 0x0

    .line 91
    return-object p1

    .line 92
    :cond_5b
    iget-object p1, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 94
    aget-object p1, p1, v3

    .line 96
    return-object p1
.end method

.method public final e()Z
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    if-nez v2, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v3, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 12
    invoke-interface {v3}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 15
    move-result v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_10
    if-ge v6, v4, :cond_8e

    .line 19
    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 22
    move-result-object v7

    .line 23
    invoke-interface {v3, v6}, Landroidx/constraintlayout/core/b$a;->g(I)F

    .line 26
    move-result v8

    .line 27
    iget-object v9, v0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 29
    iput-object v7, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    iget-boolean v10, v7, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    .line 33
    const v11, 0x38d1b717  # 1.0E-4f

    .line 36
    const/16 v12, 0x9

    .line 38
    const/4 v13, 0x0

    .line 39
    const/4 v14, 0x1

    .line 40
    if-eqz v10, :cond_59

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_2a
    if-ge v10, v12, :cond_4e

    .line 45
    iget-object v15, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 47
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 49
    aget v16, v15, v10

    .line 51
    iget-object v5, v2, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 53
    aget v5, v5, v10

    .line 55
    mul-float/2addr v5, v8

    .line 56
    add-float v5, v5, v16

    .line 58
    aput v5, v15, v10

    .line 60
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 63
    move-result v5

    .line 64
    cmpg-float v5, v5, v11

    .line 66
    if-gez v5, :cond_4a

    .line 68
    iget-object v5, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 70
    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 72
    aput v13, v5, v10

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 v14, 0x0

    .line 76
    :goto_4b
    add-int/lit8 v10, v10, 0x1

    .line 78
    goto :goto_2a

    .line 79
    :cond_4e
    if-eqz v14, :cond_57

    .line 81
    iget-object v5, v9, Landroidx/constraintlayout/core/d$b;->b:Landroidx/constraintlayout/core/d;

    .line 83
    iget-object v9, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 85
    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 88
    :cond_57
    const/4 v14, 0x0

    .line 89
    goto :goto_7e

    .line 90
    :cond_59
    const/4 v5, 0x0

    .line 91
    :goto_5a
    if-ge v5, v12, :cond_7e

    .line 93
    iget-object v10, v2, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 95
    aget v10, v10, v5

    .line 97
    cmpl-float v15, v10, v13

    .line 99
    if-eqz v15, :cond_75

    .line 101
    mul-float/2addr v10, v8

    .line 102
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result v15

    .line 106
    cmpg-float v15, v15, v11

    .line 108
    if-gez v15, :cond_6e

    .line 110
    move v10, v13

    .line 111
    :cond_6e
    iget-object v15, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 113
    iget-object v15, v15, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 115
    aput v10, v15, v5

    .line 117
    goto :goto_7b

    .line 118
    :cond_75
    iget-object v10, v9, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 120
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 122
    aput v13, v10, v5

    .line 124
    :goto_7b
    add-int/lit8 v5, v5, 0x1

    .line 126
    goto :goto_5a

    .line 127
    :cond_7e
    :goto_7e
    if-eqz v14, :cond_83

    .line 129
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 132
    :cond_83
    iget v5, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 134
    iget v7, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 136
    mul-float/2addr v7, v8

    .line 137
    add-float/2addr v7, v5

    .line 138
    iput v7, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 142
    goto :goto_10

    .line 143
    :cond_8e
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/d;->k(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 146
    return-void
.end method

.method public final j(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    array-length v3, v2

    .line 8
    if-le v0, v3, :cond_1f

    .line 10
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 13
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    array-length v2, v0

    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 24
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 34
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 36
    aput-object p1, v0, v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    iput v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 41
    if-le v2, v1, :cond_5d

    .line 43
    sub-int/2addr v2, v1

    .line 44
    aget-object v0, v0, v2

    .line 46
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 48
    iget v2, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 50
    if-le v0, v2, :cond_5d

    .line 52
    const/4 v0, 0x0

    .line 53
    move v2, v0

    .line 54
    :goto_35
    iget v3, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 56
    if-ge v2, v3, :cond_44

    .line 58
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    .line 60
    iget-object v4, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 62
    aget-object v4, v4, v2

    .line 64
    aput-object v4, v3, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_35

    .line 69
    :cond_44
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    .line 71
    new-instance v4, Landroidx/constraintlayout/core/d$a;

    .line 73
    invoke-direct {v4}, Landroidx/constraintlayout/core/d$a;-><init>()V

    .line 76
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 79
    :goto_4e
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 81
    if-ge v0, v2, :cond_5d

    .line 83
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 85
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->g:[Landroidx/constraintlayout/core/SolverVariable;

    .line 87
    aget-object v3, v3, v0

    .line 89
    aput-object v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_4e

    .line 94
    :cond_5d
    iput-boolean v1, p1, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    .line 96
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/SolverVariable;->a(Landroidx/constraintlayout/core/b;)V

    .line 99
    return-void
.end method

.method public final k(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 5
    if-ge v1, v2, :cond_26

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 9
    aget-object v2, v2, v1

    .line 11
    if-ne v2, p1, :cond_23

    .line 13
    :goto_c
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 15
    add-int/lit8 v3, v2, -0x1

    .line 17
    if-ge v1, v3, :cond_1c

    .line 19
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 23
    aget-object v4, v2, v3

    .line 25
    aput-object v4, v2, v1

    .line 27
    move v1, v3

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    .line 31
    iput v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 33
    iput-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->a:Z

    .line 35
    return-void

    .line 36
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_26
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, " goal -> ("

    .line 5
    invoke-static {v0, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ") : "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_17
    iget v2, p0, Landroidx/constraintlayout/core/d;->h:I

    .line 26
    if-ge v1, v2, :cond_38

    .line 28
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->f:[Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    aget-object v2, v2, v1

    .line 32
    iget-object v3, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 34
    iput-object v2, v3, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v2, p0, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " "

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_17

    .line 57
    :cond_38
    return-object v0
.end method
