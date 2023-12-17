.class public final Landroidx/constraintlayout/core/c;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/c$a;
    }
.end annotation


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8


# instance fields
.field public a:Z

.field public b:I

.field public c:Landroidx/constraintlayout/core/d;

.field public d:I

.field public e:I

.field public f:[Landroidx/constraintlayout/core/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lt/a;

.field public m:[Landroidx/constraintlayout/core/SolverVariable;

.field public n:I

.field public o:Landroidx/constraintlayout/core/b;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/c;->a:Z

    .line 7
    iput v0, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 9
    const/16 v1, 0x20

    .line 11
    iput v1, p0, Landroidx/constraintlayout/core/c;->d:I

    .line 13
    iput v1, p0, Landroidx/constraintlayout/core/c;->e:I

    .line 15
    const/4 v2, 0x0

    .line 16
    iput-object v2, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 18
    iput-boolean v0, p0, Landroidx/constraintlayout/core/c;->g:Z

    .line 20
    new-array v3, v1, [Z

    .line 22
    iput-object v3, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 24
    const/4 v3, 0x1

    .line 25
    iput v3, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 29
    iput v1, p0, Landroidx/constraintlayout/core/c;->k:I

    .line 31
    sget v3, Landroidx/constraintlayout/core/c;->q:I

    .line 33
    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    .line 35
    iput-object v3, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 39
    new-array v1, v1, [Landroidx/constraintlayout/core/b;

    .line 41
    iput-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 43
    :goto_2a
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 45
    if-ge v0, v1, :cond_42

    .line 47
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 49
    aget-object v1, v1, v0

    .line 51
    if-eqz v1, :cond_3b

    .line 53
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 55
    iget-object v3, v3, Lt/a;->a:Lt/c;

    .line 57
    invoke-virtual {v3, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 60
    :cond_3b
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 62
    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_2a

    .line 67
    :cond_42
    new-instance v0, Lt/a;

    .line 69
    invoke-direct {v0}, Lt/a;-><init>()V

    .line 72
    iput-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 74
    new-instance v1, Landroidx/constraintlayout/core/d;

    .line 76
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/d;-><init>(Lt/a;)V

    .line 79
    iput-object v1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 81
    new-instance v1, Landroidx/constraintlayout/core/b;

    .line 83
    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    .line 86
    iput-object v1, p0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    .line 88
    return-void
.end method

.method public static n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I
    .registers 2

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    if-eqz p0, :cond_b

    .line 5
    iget p0, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 7
    const/high16 v0, 0x3f000000  # 0.5f

    .line 9
    add-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 3
    iget-object v0, v0, Lt/a;->b:Lt/c;

    .line 5
    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 11
    if-nez v0, :cond_14

    .line 13
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 15
    invoke-direct {v0, p1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    .line 18
    iput-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    .line 24
    iput-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 26
    :goto_19
    iget p1, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 28
    sget v1, Landroidx/constraintlayout/core/c;->q:I

    .line 30
    if-lt p1, v1, :cond_2d

    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 34
    sput v1, Landroidx/constraintlayout/core/c;->q:I

    .line 36
    iget-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    .line 38
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    :cond_2d
    iget-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    .line 48
    iget v1, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 52
    iput v2, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 54
    aput-object v0, p1, v1

    .line 56
    return-object v0
.end method

.method public final b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 15

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000  # 1.0f

    .line 7
    if-ne p2, p5, :cond_1b

    .line 9
    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 11
    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 14
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 16
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 21
    const/high16 p3, -0x40000000  # -2.0f

    .line 23
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 26
    goto/16 :goto_8f

    .line 28
    :cond_1b
    const/high16 v2, 0x3f000000  # 0.5f

    .line 30
    cmpl-float v2, p4, v2

    .line 32
    const/high16 v3, -0x40800000  # -1.0f

    .line 34
    if-nez v2, :cond_41

    .line 36
    iget-object p4, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 38
    invoke-interface {p4, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 41
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 43
    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 46
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 48
    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 51
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 53
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 56
    if-gtz p3, :cond_3b

    .line 58
    if-lez p7, :cond_8f

    .line 60
    :cond_3b
    neg-int p1, p3

    .line 61
    add-int/2addr p1, p7

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 65
    goto :goto_8f

    .line 66
    :cond_41
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, p4, v2

    .line 69
    if-gtz v2, :cond_54

    .line 71
    iget-object p4, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 73
    invoke-interface {p4, p1, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 76
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 78
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 81
    int-to-float p1, p3

    .line 82
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 84
    goto :goto_8f

    .line 85
    :cond_54
    cmpl-float v2, p4, v1

    .line 87
    if-ltz v2, :cond_67

    .line 89
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 91
    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 94
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 96
    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 99
    neg-int p1, p7

    .line 100
    int-to-float p1, p1

    .line 101
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 103
    goto :goto_8f

    .line 104
    :cond_67
    iget-object v2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 106
    sub-float v4, v1, p4

    .line 108
    mul-float v5, v4, v1

    .line 110
    invoke-interface {v2, p1, v5}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 113
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 115
    mul-float v2, v4, v3

    .line 117
    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 120
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 122
    mul-float/2addr v3, p4

    .line 123
    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 126
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 128
    mul-float/2addr v1, p4

    .line 129
    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 132
    if-gtz p3, :cond_87

    .line 134
    if-lez p7, :cond_8f

    .line 136
    :cond_87
    neg-int p1, p3

    .line 137
    int-to-float p1, p1

    .line 138
    mul-float/2addr p1, v4

    .line 139
    int-to-float p2, p7

    .line 140
    mul-float/2addr p2, p4

    .line 141
    add-float/2addr p2, p1

    .line 142
    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 144
    :cond_8f
    :goto_8f
    const/16 p1, 0x8

    .line 146
    if-eq p8, p1, :cond_96

    .line 148
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/core/b;->b(Landroidx/constraintlayout/core/c;I)V

    .line 151
    :cond_96
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 154
    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/b;)V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    iget v4, v0, Landroidx/constraintlayout/core/c;->k:I

    .line 11
    if-ge v2, v4, :cond_13

    .line 13
    iget v2, v0, Landroidx/constraintlayout/core/c;->i:I

    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v4, v0, Landroidx/constraintlayout/core/c;->e:I

    .line 18
    if-lt v2, v4, :cond_16

    .line 20
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->o()V

    .line 23
    :cond_16
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    .line 25
    if-nez v2, :cond_1be

    .line 27
    iget-object v2, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 29
    array-length v2, v2

    .line 30
    const/4 v5, -0x1

    .line 31
    if-nez v2, :cond_21

    .line 33
    goto :goto_83

    .line 34
    :cond_21
    const/4 v2, 0x0

    .line 35
    :goto_22
    if-nez v2, :cond_73

    .line 37
    iget-object v6, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 39
    invoke-interface {v6}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_2b
    if-ge v7, v6, :cond_44

    .line 46
    iget-object v8, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 48
    invoke-interface {v8, v7}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 51
    move-result-object v8

    .line 52
    iget v9, v8, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 54
    if-ne v9, v5, :cond_3c

    .line 56
    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 58
    if-nez v9, :cond_3c

    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    iget-object v9, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_41
    add-int/lit8 v7, v7, 0x1

    .line 68
    goto :goto_2b

    .line 69
    :cond_44
    iget-object v6, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v6

    .line 75
    if-lez v6, :cond_71

    .line 77
    const/4 v7, 0x0

    .line 78
    :goto_4d
    if-ge v7, v6, :cond_6b

    .line 80
    iget-object v8, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Landroidx/constraintlayout/core/SolverVariable;

    .line 88
    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 90
    if-eqz v9, :cond_5f

    .line 92
    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/SolverVariable;Z)V

    .line 95
    goto :goto_68

    .line 96
    :cond_5f
    iget-object v9, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 98
    iget v8, v8, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 100
    aget-object v8, v9, v8

    .line 102
    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V

    .line 105
    :goto_68
    add-int/lit8 v7, v7, 0x1

    .line 107
    goto :goto_4d

    .line 108
    :cond_6b
    iget-object v6, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 113
    goto :goto_22

    .line 114
    :cond_71
    move v2, v3

    .line 115
    goto :goto_22

    .line 116
    :cond_73
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 118
    if-eqz v2, :cond_83

    .line 120
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 122
    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_83

    .line 128
    iput-boolean v3, v1, Landroidx/constraintlayout/core/b;->e:Z

    .line 130
    iput-boolean v3, v0, Landroidx/constraintlayout/core/c;->a:Z

    .line 132
    :cond_83
    :goto_83
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/b;->e()Z

    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_8a

    .line 138
    return-void

    .line 139
    :cond_8a
    iget v2, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 141
    const/4 v6, 0x0

    .line 142
    cmpg-float v7, v2, v6

    .line 144
    if-gez v7, :cond_9b

    .line 146
    const/high16 v7, -0x40800000  # -1.0f

    .line 148
    mul-float/2addr v2, v7

    .line 149
    iput v2, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 151
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 153
    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->f()V

    .line 156
    :cond_9b
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 158
    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 161
    move-result v2

    .line 162
    move v11, v6

    .line 163
    move v13, v11

    .line 164
    const/4 v8, 0x0

    .line 165
    const/4 v9, 0x0

    .line 166
    const/4 v10, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    const/4 v14, 0x0

    .line 169
    :goto_a8
    if-ge v8, v2, :cond_107

    .line 171
    iget-object v15, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 173
    invoke-interface {v15, v8}, Landroidx/constraintlayout/core/b$a;->g(I)F

    .line 176
    move-result v15

    .line 177
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 179
    invoke-interface {v4, v8}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 182
    move-result-object v4

    .line 183
    iget-object v5, v4, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 185
    sget-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 187
    if-ne v5, v7, :cond_dd

    .line 189
    if-nez v9, :cond_c3

    .line 191
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 193
    if-gt v5, v3, :cond_cc

    .line 195
    goto :goto_d9

    .line 196
    :cond_c3
    cmpl-float v5, v11, v15

    .line 198
    if-lez v5, :cond_ce

    .line 200
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 202
    if-gt v5, v3, :cond_cc

    .line 204
    goto :goto_d9

    .line 205
    :cond_cc
    const/4 v12, 0x0

    .line 206
    goto :goto_da

    .line 207
    :cond_ce
    if-nez v12, :cond_103

    .line 209
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 211
    if-gt v5, v3, :cond_d6

    .line 213
    move v5, v3

    .line 214
    goto :goto_d7

    .line 215
    :cond_d6
    const/4 v5, 0x0

    .line 216
    :goto_d7
    if-eqz v5, :cond_103

    .line 218
    :goto_d9
    move v12, v3

    .line 219
    :goto_da
    move-object v9, v4

    .line 220
    move v11, v15

    .line 221
    goto :goto_103

    .line 222
    :cond_dd
    if-nez v9, :cond_103

    .line 224
    cmpg-float v5, v15, v6

    .line 226
    if-gez v5, :cond_103

    .line 228
    if-nez v10, :cond_ea

    .line 230
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 232
    if-gt v5, v3, :cond_f3

    .line 234
    goto :goto_100

    .line 235
    :cond_ea
    cmpl-float v5, v13, v15

    .line 237
    if-lez v5, :cond_f5

    .line 239
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 241
    if-gt v5, v3, :cond_f3

    .line 243
    goto :goto_100

    .line 244
    :cond_f3
    const/4 v14, 0x0

    .line 245
    goto :goto_101

    .line 246
    :cond_f5
    if-nez v14, :cond_103

    .line 248
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    .line 250
    if-gt v5, v3, :cond_fd

    .line 252
    move v5, v3

    .line 253
    goto :goto_fe

    .line 254
    :cond_fd
    const/4 v5, 0x0

    .line 255
    :goto_fe
    if-eqz v5, :cond_103

    .line 257
    :goto_100
    move v14, v3

    .line 258
    :goto_101
    move-object v10, v4

    .line 259
    move v13, v15

    .line 260
    :cond_103
    :goto_103
    add-int/lit8 v8, v8, 0x1

    .line 262
    const/4 v5, -0x1

    .line 263
    goto :goto_a8

    .line 264
    :cond_107
    if-eqz v9, :cond_10a

    .line 266
    goto :goto_10b

    .line 267
    :cond_10a
    move-object v9, v10

    .line 268
    :goto_10b
    if-nez v9, :cond_10f

    .line 270
    move v2, v3

    .line 271
    goto :goto_113

    .line 272
    :cond_10f
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 275
    const/4 v2, 0x0

    .line 276
    :goto_113
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 278
    invoke-interface {v4}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_11d

    .line 284
    iput-boolean v3, v1, Landroidx/constraintlayout/core/b;->e:Z

    .line 286
    :cond_11d
    if-eqz v2, :cond_1a6

    .line 288
    iget v2, v0, Landroidx/constraintlayout/core/c;->i:I

    .line 290
    add-int/2addr v2, v3

    .line 291
    iget v4, v0, Landroidx/constraintlayout/core/c;->e:I

    .line 293
    if-lt v2, v4, :cond_129

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->o()V

    .line 298
    :cond_129
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 300
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 303
    move-result-object v2

    .line 304
    iget v4, v0, Landroidx/constraintlayout/core/c;->b:I

    .line 306
    add-int/2addr v4, v3

    .line 307
    iput v4, v0, Landroidx/constraintlayout/core/c;->b:I

    .line 309
    iget v5, v0, Landroidx/constraintlayout/core/c;->i:I

    .line 311
    add-int/2addr v5, v3

    .line 312
    iput v5, v0, Landroidx/constraintlayout/core/c;->i:I

    .line 314
    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 316
    iget-object v5, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 318
    iget-object v5, v5, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 320
    aput-object v2, v5, v4

    .line 322
    iput-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 324
    iget v4, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 326
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->h(Landroidx/constraintlayout/core/b;)V

    .line 329
    iget v5, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 331
    add-int/2addr v4, v3

    .line 332
    if-ne v5, v4, :cond_1a6

    .line 334
    iget-object v4, v0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    .line 336
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    const/4 v5, 0x0

    .line 340
    iput-object v5, v4, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 342
    iget-object v5, v4, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 344
    invoke-interface {v5}, Landroidx/constraintlayout/core/b$a;->clear()V

    .line 347
    const/4 v5, 0x0

    .line 348
    :goto_15b
    iget-object v7, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 350
    invoke-interface {v7}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 353
    move-result v7

    .line 354
    if-ge v5, v7, :cond_177

    .line 356
    iget-object v7, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 358
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 361
    move-result-object v7

    .line 362
    iget-object v8, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 364
    invoke-interface {v8, v5}, Landroidx/constraintlayout/core/b$a;->g(I)F

    .line 367
    move-result v8

    .line 368
    iget-object v9, v4, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 370
    invoke-interface {v9, v7, v8, v3}, Landroidx/constraintlayout/core/b$a;->e(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 373
    add-int/lit8 v5, v5, 0x1

    .line 375
    goto :goto_15b

    .line 376
    :cond_177
    iget-object v4, v0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    .line 378
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/c;->r(Landroidx/constraintlayout/core/b;)V

    .line 381
    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 383
    const/4 v5, -0x1

    .line 384
    if-ne v4, v5, :cond_1a4

    .line 386
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 388
    if-ne v4, v2, :cond_18f

    .line 390
    const/4 v4, 0x0

    .line 391
    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/b;->f([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_18f

    .line 397
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 400
    :cond_18f
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    .line 402
    if-nez v2, :cond_198

    .line 404
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 406
    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    .line 409
    :cond_198
    iget-object v2, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 411
    iget-object v2, v2, Lt/a;->a:Lt/c;

    .line 413
    invoke-virtual {v2, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 416
    iget v2, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 418
    sub-int/2addr v2, v3

    .line 419
    iput v2, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 421
    :cond_1a4
    move v2, v3

    .line 422
    goto :goto_1a7

    .line 423
    :cond_1a6
    const/4 v2, 0x0

    .line 424
    :goto_1a7
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 426
    if-eqz v4, :cond_1b8

    .line 428
    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 430
    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 432
    if-eq v4, v5, :cond_1b9

    .line 434
    iget v4, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 436
    cmpg-float v4, v4, v6

    .line 438
    if-ltz v4, :cond_1b8

    .line 440
    goto :goto_1b9

    .line 441
    :cond_1b8
    const/4 v3, 0x0

    .line 442
    :cond_1b9
    :goto_1b9
    if-nez v3, :cond_1bc

    .line 444
    return-void

    .line 445
    :cond_1bc
    move v4, v2

    .line 446
    goto :goto_1bf

    .line 447
    :cond_1be
    const/4 v4, 0x0

    .line 448
    :goto_1bf
    if-nez v4, :cond_1c4

    .line 450
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->h(Landroidx/constraintlayout/core/b;)V

    .line 453
    :cond_1c4
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 7

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_1a

    .line 7
    int-to-float p2, p2

    .line 8
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    .line 11
    const/4 p1, 0x0

    .line 12
    :goto_b
    iget p2, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 14
    add-int/2addr p2, v2

    .line 15
    if-ge p1, p2, :cond_19

    .line 17
    iget-object p2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 19
    iget-object p2, p2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    aget-object p2, p2, p1

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    goto :goto_b

    .line 26
    :cond_19
    return-void

    .line 27
    :cond_1a
    if-eq v0, v1, :cond_56

    .line 29
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 31
    aget-object v0, v3, v0

    .line 33
    iget-boolean v3, v0, Landroidx/constraintlayout/core/b;->e:Z

    .line 35
    if-eqz v3, :cond_28

    .line 37
    int-to-float p1, p2

    .line 38
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 40
    goto :goto_66

    .line 41
    :cond_28
    iget-object v3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 43
    invoke-interface {v3}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_36

    .line 49
    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->e:Z

    .line 51
    int-to-float p1, p2

    .line 52
    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 54
    goto :goto_66

    .line 55
    :cond_36
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 58
    move-result-object v0

    .line 59
    if-gez p2, :cond_48

    .line 61
    mul-int/2addr p2, v1

    .line 62
    int-to-float p2, p2

    .line 63
    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 65
    iget-object p2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 67
    const/high16 v1, 0x3f800000  # 1.0f

    .line 69
    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 72
    goto :goto_52

    .line 73
    :cond_48
    int-to-float p2, p2

    .line 74
    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 76
    iget-object p2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 78
    const/high16 v1, -0x40800000  # -1.0f

    .line 80
    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 83
    :goto_52
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 86
    goto :goto_66

    .line 87
    :cond_56
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 90
    move-result-object v0

    .line 91
    iput-object p1, v0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 93
    int-to-float p2, p2

    .line 94
    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 96
    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 98
    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->e:Z

    .line 100
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 103
    :goto_66
    return-void
.end method

.method public final e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 9

    .line 1
    const/16 v0, 0x8

    .line 3
    if-ne p4, v0, :cond_15

    .line 5
    iget-boolean v1, p2, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 7
    if-eqz v1, :cond_15

    .line 9
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_15

    .line 14
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 16
    int-to-float p3, p3

    .line 17
    add-float/2addr p2, p3

    .line 18
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    .line 21
    return-void

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz p3, :cond_24

    .line 29
    if-gez p3, :cond_21

    .line 31
    mul-int/lit8 p3, p3, -0x1

    .line 33
    const/4 v2, 0x1

    .line 34
    :cond_21
    int-to-float p3, p3

    .line 35
    iput p3, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 37
    :cond_24
    const/high16 p3, -0x40800000  # -1.0f

    .line 39
    const/high16 v3, 0x3f800000  # 1.0f

    .line 41
    if-nez v2, :cond_35

    .line 43
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 45
    invoke-interface {v2, p1, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 48
    iget-object p1, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 50
    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 53
    goto :goto_3f

    .line 54
    :cond_35
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 56
    invoke-interface {v2, p1, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 59
    iget-object p1, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 61
    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 64
    :goto_3f
    if-eq p4, v0, :cond_44

    .line 66
    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/core/b;->b(Landroidx/constraintlayout/core/c;I)V

    .line 69
    :cond_44
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 72
    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 15
    const/16 p1, 0x8

    .line 17
    if-eq p4, p1, :cond_26

    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000  # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 39
    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 42
    return-void
.end method

.method public final g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 15
    const/16 p1, 0x8

    .line 17
    if-eq p4, p1, :cond_26

    .line 19
    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 21
    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000  # -1.0f

    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 39
    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    .line 42
    return-void
.end method

.method public final h(Landroidx/constraintlayout/core/b;)V
    .registers 9

    .line 1
    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->e:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    iget p1, p1, Landroidx/constraintlayout/core/b;->b:F

    .line 9
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    .line 12
    goto :goto_1d

    .line 13
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 15
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 17
    aput-object p1, v0, v1

    .line 19
    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    iput v1, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 27
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    .line 30
    :goto_1d
    iget-boolean p1, p0, Landroidx/constraintlayout/core/c;->a:Z

    .line 32
    if-eqz p1, :cond_7f

    .line 34
    const/4 p1, 0x0

    .line 35
    move v0, p1

    .line 36
    :goto_23
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 38
    if-ge v0, v1, :cond_7d

    .line 40
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 42
    aget-object v1, v1, v0

    .line 44
    if-nez v1, :cond_34

    .line 46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 48
    const-string v2, "WTF"

    .line 50
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_34
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 55
    aget-object v1, v1, v0

    .line 57
    if-eqz v1, :cond_7a

    .line 59
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    .line 61
    if-eqz v2, :cond_7a

    .line 63
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 65
    iget v3, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 67
    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    .line 70
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 72
    iget-object v2, v2, Lt/a;->a:Lt/c;

    .line 74
    invoke-virtual {v2, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v1, v0, 0x1

    .line 84
    move v3, v1

    .line 85
    :goto_54
    iget v4, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 87
    if-ge v1, v4, :cond_6e

    .line 89
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 91
    add-int/lit8 v4, v1, -0x1

    .line 93
    aget-object v5, v3, v1

    .line 95
    aput-object v5, v3, v4

    .line 97
    iget-object v3, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 99
    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 101
    if-ne v5, v1, :cond_68

    .line 103
    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 105
    :cond_68
    add-int/lit8 v3, v1, 0x1

    .line 107
    move v6, v3

    .line 108
    move v3, v1

    .line 109
    move v1, v6

    .line 110
    goto :goto_54

    .line 111
    :cond_6e
    if-ge v3, v4, :cond_74

    .line 113
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 115
    aput-object v2, v1, v3

    .line 117
    :cond_74
    add-int/lit8 v4, v4, -0x1

    .line 119
    iput v4, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 123
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    .line 125
    goto :goto_23

    .line 126
    :cond_7d
    iput-boolean p1, p0, Landroidx/constraintlayout/core/c;->a:Z

    .line 128
    :cond_7f
    return-void
.end method

.method public final i()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 4
    if-ge v0, v1, :cond_12

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 8
    aget-object v1, v1, v0

    .line 10
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 12
    iget v1, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 14
    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_12
    return-void
.end method

.method public final j(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/c;->e:I

    .line 7
    if-lt v0, v1, :cond_b

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    .line 12
    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 24
    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    iput v2, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 30
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 32
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 34
    iget-object p1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 36
    iget-object p1, p1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 38
    aput-object v0, p1, v1

    .line 40
    iget-object p1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 42
    iget-object v1, p1, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    .line 44
    iput-object v0, v1, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 46
    iget-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 52
    iget-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    .line 54
    iget v2, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    .line 56
    const/high16 v3, 0x3f800000  # 1.0f

    .line 58
    aput v3, v1, v2

    .line 60
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 63
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 9
    iget v2, p0, Landroidx/constraintlayout/core/c;->e:I

    .line 11
    if-lt v1, v2, :cond_f

    .line 13
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    .line 16
    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    if-eqz v1, :cond_4d

    .line 20
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    if-nez v0, :cond_1f

    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    .line 29
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    move-object v0, p1

    .line 32
    :cond_1f
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq p1, v1, :cond_30

    .line 37
    iget v2, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 39
    if-gt p1, v2, :cond_30

    .line 41
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 43
    iget-object v2, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    aget-object v2, v2, p1

    .line 47
    if-nez v2, :cond_4d

    .line 49
    :cond_30
    if-eq p1, v1, :cond_35

    .line 51
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    .line 54
    :cond_35
    iget p1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 58
    iput p1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 60
    iget v1, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    iput v1, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 66
    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 68
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 70
    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 72
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 74
    iget-object v1, v1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 76
    aput-object v0, v1, p1

    .line 78
    :cond_4d
    return-object v0
.end method

.method public final l()Landroidx/constraintlayout/core/b;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 3
    iget-object v0, v0, Lt/a;->a:Lt/c;

    .line 5
    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/core/b;

    .line 11
    if-nez v0, :cond_14

    .line 13
    new-instance v0, Landroidx/constraintlayout/core/b;

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 17
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    .line 20
    goto :goto_22

    .line 21
    :cond_14
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    iget-object v1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 26
    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->clear()V

    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, v0, Landroidx/constraintlayout/core/b;->b:F

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-boolean v1, v0, Landroidx/constraintlayout/core/b;->e:Z

    .line 35
    :goto_22
    return-object v0
.end method

.method public final m()Landroidx/constraintlayout/core/SolverVariable;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget v1, p0, Landroidx/constraintlayout/core/c;->e:I

    .line 7
    if-lt v0, v1, :cond_b

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    .line 12
    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 14
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    iput v1, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 24
    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    iput v2, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 30
    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 32
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 34
    iget-object v2, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 36
    aput-object v0, v2, v1

    .line 38
    return-object v0
.end method

.method public final o()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/c;->d:I

    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/c;->d:I

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Landroidx/constraintlayout/core/b;

    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 17
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 19
    iget-object v1, v0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 21
    iget v2, p0, Landroidx/constraintlayout/core/c;->d:I

    .line 23
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    iput-object v1, v0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 31
    iget v0, p0, Landroidx/constraintlayout/core/c;->d:I

    .line 33
    new-array v1, v0, [Z

    .line 35
    iput-object v1, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/c;->e:I

    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/c;->k:I

    .line 41
    return-void
.end method

.method public final p()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->e()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->i()V

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v0, p0, Landroidx/constraintlayout/core/c;->g:Z

    .line 15
    if-eqz v0, :cond_2f

    .line 17
    const/4 v0, 0x0

    .line 18
    move v1, v0

    .line 19
    :goto_12
    iget v2, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 21
    if-ge v1, v2, :cond_22

    .line 23
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 25
    aget-object v2, v2, v1

    .line 27
    iget-boolean v2, v2, Landroidx/constraintlayout/core/b;->e:Z

    .line 29
    if-nez v2, :cond_1f

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    const/4 v0, 0x1

    .line 36
    :goto_23
    if-nez v0, :cond_2b

    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 40
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->q(Landroidx/constraintlayout/core/d;)V

    .line 43
    goto :goto_34

    .line 44
    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->i()V

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 50
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->q(Landroidx/constraintlayout/core/d;)V

    .line 53
    :goto_34
    return-void
.end method

.method public final q(Landroidx/constraintlayout/core/d;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    iget v3, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v2, v3, :cond_21

    .line 10
    iget-object v3, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 12
    aget-object v3, v3, v2

    .line 14
    iget-object v6, v3, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 18
    sget-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 20
    if-ne v6, v7, :cond_16

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    iget v3, v3, Landroidx/constraintlayout/core/b;->b:F

    .line 25
    cmpg-float v3, v3, v4

    .line 27
    if-gez v3, :cond_1e

    .line 29
    move v2, v5

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_3

    .line 34
    :cond_21
    const/4 v2, 0x0

    .line 35
    :goto_22
    if-eqz v2, :cond_b2

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_26
    if-nez v2, :cond_b2

    .line 41
    add-int/2addr v3, v5

    .line 42
    const v6, 0x7f7fffff  # Float.MAX_VALUE

    .line 45
    const/4 v7, -0x1

    .line 46
    move v9, v7

    .line 47
    move v10, v9

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    :goto_31
    iget v12, v0, Landroidx/constraintlayout/core/c;->j:I

    .line 52
    if-ge v8, v12, :cond_8b

    .line 54
    iget-object v12, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 56
    aget-object v12, v12, v8

    .line 58
    iget-object v13, v12, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 60
    iget-object v13, v13, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 62
    sget-object v14, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 64
    if-ne v13, v14, :cond_42

    .line 66
    goto :goto_86

    .line 67
    :cond_42
    iget-boolean v13, v12, Landroidx/constraintlayout/core/b;->e:Z

    .line 69
    if-eqz v13, :cond_47

    .line 71
    goto :goto_86

    .line 72
    :cond_47
    iget v13, v12, Landroidx/constraintlayout/core/b;->b:F

    .line 74
    cmpg-float v13, v13, v4

    .line 76
    if-gez v13, :cond_86

    .line 78
    iget-object v13, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 80
    invoke-interface {v13}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 83
    move-result v13

    .line 84
    const/4 v14, 0x0

    .line 85
    :goto_54
    if-ge v14, v13, :cond_86

    .line 87
    iget-object v15, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 89
    invoke-interface {v15, v14}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 92
    move-result-object v15

    .line 93
    iget-object v1, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 95
    invoke-interface {v1, v15}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 98
    move-result v1

    .line 99
    cmpg-float v16, v1, v4

    .line 101
    if-gtz v16, :cond_67

    .line 103
    goto :goto_81

    .line 104
    :cond_67
    const/4 v4, 0x0

    .line 105
    :goto_68
    const/16 v5, 0x9

    .line 107
    if-ge v4, v5, :cond_81

    .line 109
    iget-object v5, v15, Landroidx/constraintlayout/core/SolverVariable;->g:[F

    .line 111
    aget v5, v5, v4

    .line 113
    div-float/2addr v5, v1

    .line 114
    cmpg-float v17, v5, v6

    .line 116
    if-gez v17, :cond_77

    .line 118
    if-eq v4, v11, :cond_79

    .line 120
    :cond_77
    if-le v4, v11, :cond_7e

    .line 122
    :cond_79
    iget v10, v15, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 124
    move v11, v4

    .line 125
    move v6, v5

    .line 126
    move v9, v8

    .line 127
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    .line 129
    goto :goto_68

    .line 130
    :cond_81
    :goto_81
    add-int/lit8 v14, v14, 0x1

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v5, 0x1

    .line 134
    goto :goto_54

    .line 135
    :cond_86
    :goto_86
    add-int/lit8 v8, v8, 0x1

    .line 137
    const/4 v4, 0x0

    .line 138
    const/4 v5, 0x1

    .line 139
    goto :goto_31

    .line 140
    :cond_8b
    if-eq v9, v7, :cond_a6

    .line 142
    iget-object v1, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 144
    aget-object v1, v1, v9

    .line 146
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 148
    iput v7, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 150
    iget-object v4, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 152
    iget-object v4, v4, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 154
    aget-object v4, v4, v10

    .line 156
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 159
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 161
    iput v9, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 163
    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    .line 166
    goto :goto_a7

    .line 167
    :cond_a6
    const/4 v2, 0x1

    .line 168
    :goto_a7
    iget v1, v0, Landroidx/constraintlayout/core/c;->i:I

    .line 170
    div-int/lit8 v1, v1, 0x2

    .line 172
    if-le v3, v1, :cond_ae

    .line 174
    const/4 v2, 0x1

    .line 175
    :cond_ae
    const/4 v4, 0x0

    .line 176
    const/4 v5, 0x1

    .line 177
    goto/16 :goto_26

    .line 179
    :cond_b2
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->r(Landroidx/constraintlayout/core/b;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->i()V

    .line 185
    return-void
.end method

.method public final r(Landroidx/constraintlayout/core/b;)V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 5
    if-ge v1, v2, :cond_d

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 9
    aput-boolean v0, v2, v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_2

    .line 14
    :cond_d
    const/4 v1, 0x1

    .line 15
    move v2, v0

    .line 16
    move v3, v2

    .line 17
    :cond_10
    :goto_10
    if-nez v2, :cond_8c

    .line 19
    add-int/2addr v3, v1

    .line 20
    iget v4, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 24
    if-lt v3, v4, :cond_1a

    .line 26
    return-void

    .line 27
    :cond_1a
    iget-object v4, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 29
    if-eqz v4, :cond_24

    .line 31
    iget-object v5, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 33
    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 35
    aput-boolean v1, v5, v4

    .line 37
    :cond_24
    iget-object v4, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 39
    invoke-interface {p1, v4}, Landroidx/constraintlayout/core/c$a;->a([Z)Landroidx/constraintlayout/core/SolverVariable;

    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_37

    .line 45
    iget-object v5, p0, Landroidx/constraintlayout/core/c;->h:[Z

    .line 47
    iget v6, v4, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 49
    aget-boolean v7, v5, v6

    .line 51
    if-eqz v7, :cond_35

    .line 53
    return-void

    .line 54
    :cond_35
    aput-boolean v1, v5, v6

    .line 56
    :cond_37
    if-eqz v4, :cond_8a

    .line 58
    const v5, 0x7f7fffff  # Float.MAX_VALUE

    .line 61
    const/4 v6, -0x1

    .line 62
    move v7, v0

    .line 63
    move v8, v6

    .line 64
    :goto_3f
    iget v9, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 66
    if-ge v7, v9, :cond_75

    .line 68
    iget-object v9, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 70
    aget-object v9, v9, v7

    .line 72
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 74
    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 76
    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 78
    if-ne v10, v11, :cond_50

    .line 80
    goto :goto_72

    .line 81
    :cond_50
    iget-boolean v10, v9, Landroidx/constraintlayout/core/b;->e:Z

    .line 83
    if-eqz v10, :cond_55

    .line 85
    goto :goto_72

    .line 86
    :cond_55
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 88
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->a(Landroidx/constraintlayout/core/SolverVariable;)Z

    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_72

    .line 94
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 96
    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 99
    move-result v10

    .line 100
    const/4 v11, 0x0

    .line 101
    cmpg-float v11, v10, v11

    .line 103
    if-gez v11, :cond_72

    .line 105
    iget v9, v9, Landroidx/constraintlayout/core/b;->b:F

    .line 107
    neg-float v9, v9

    .line 108
    div-float/2addr v9, v10

    .line 109
    cmpg-float v10, v9, v5

    .line 111
    if-gez v10, :cond_72

    .line 113
    move v8, v7

    .line 114
    move v5, v9

    .line 115
    :cond_72
    :goto_72
    add-int/lit8 v7, v7, 0x1

    .line 117
    goto :goto_3f

    .line 118
    :cond_75
    if-le v8, v6, :cond_10

    .line 120
    iget-object v5, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 122
    aget-object v5, v5, v8

    .line 124
    iget-object v7, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 126
    iput v6, v7, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 128
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 131
    iget-object v4, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 133
    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 135
    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    .line 138
    goto :goto_10

    .line 139
    :cond_8a
    move v2, v1

    .line 140
    goto :goto_10

    .line 141
    :cond_8c
    return-void
.end method

.method public final s()V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 5
    iget-object v3, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    array-length v4, v3

    .line 8
    if-ge v1, v4, :cond_13

    .line 10
    aget-object v2, v3, v1

    .line 12
    if-eqz v2, :cond_10

    .line 14
    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    .line 17
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_2

    .line 20
    :cond_13
    iget-object v1, v2, Lt/a;->b:Lt/c;

    .line 22
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    iget v3, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    array-length v4, v2

    .line 30
    if-le v3, v4, :cond_20

    .line 32
    array-length v3, v2

    .line 33
    :cond_20
    move v4, v0

    .line 34
    :goto_21
    if-ge v4, v3, :cond_35

    .line 36
    aget-object v5, v2, v4

    .line 38
    iget v6, v1, Lt/c;->c:I

    .line 40
    iget-object v7, v1, Lt/c;->b:[Ljava/lang/Object;

    .line 42
    array-length v8, v7

    .line 43
    if-ge v6, v8, :cond_32

    .line 45
    aput-object v5, v7, v6

    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 49
    iput v6, v1, Lt/c;->c:I

    .line 51
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_21

    .line 54
    :cond_35
    iput v0, p0, Landroidx/constraintlayout/core/c;->n:I

    .line 56
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 58
    iget-object v1, v1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iput v0, p0, Landroidx/constraintlayout/core/c;->b:I

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    .line 68
    iput v0, v1, Landroidx/constraintlayout/core/d;->h:I

    .line 70
    const/4 v3, 0x0

    .line 71
    iput v3, v1, Landroidx/constraintlayout/core/b;->b:F

    .line 73
    const/4 v1, 0x1

    .line 74
    iput v1, p0, Landroidx/constraintlayout/core/c;->i:I

    .line 76
    move v1, v0

    .line 77
    :goto_4c
    iget v3, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 79
    if-ge v1, v3, :cond_57

    .line 81
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 83
    aget-object v3, v3, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_4c

    .line 88
    :cond_57
    move v1, v0

    .line 89
    :goto_58
    iget v3, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 91
    if-ge v1, v3, :cond_70

    .line 93
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 95
    aget-object v3, v3, v1

    .line 97
    if-eqz v3, :cond_69

    .line 99
    iget-object v4, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 101
    iget-object v4, v4, Lt/a;->a:Lt/c;

    .line 103
    invoke-virtual {v4, v3}, Lt/c;->release(Ljava/lang/Object;)Z

    .line 106
    :cond_69
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    .line 108
    aput-object v2, v3, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 112
    goto :goto_58

    .line 113
    :cond_70
    iput v0, p0, Landroidx/constraintlayout/core/c;->j:I

    .line 115
    new-instance v0, Landroidx/constraintlayout/core/b;

    .line 117
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    .line 119
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    .line 122
    iput-object v0, p0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    .line 124
    return-void
.end method
