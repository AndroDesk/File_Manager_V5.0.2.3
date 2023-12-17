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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/c;->a:Z

    iput v0, p0, Landroidx/constraintlayout/core/c;->b:I

    const/16 v1, 0x20

    iput v1, p0, Landroidx/constraintlayout/core/c;->d:I

    iput v1, p0, Landroidx/constraintlayout/core/c;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/c;->g:Z

    new-array v3, v1, [Z

    iput-object v3, p0, Landroidx/constraintlayout/core/c;->h:[Z

    const/4 v3, 0x1

    iput v3, p0, Landroidx/constraintlayout/core/c;->i:I

    iput v0, p0, Landroidx/constraintlayout/core/c;->j:I

    iput v1, p0, Landroidx/constraintlayout/core/c;->k:I

    sget v3, Landroidx/constraintlayout/core/c;->q:I

    new-array v3, v3, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v3, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    iput v0, p0, Landroidx/constraintlayout/core/c;->n:I

    new-array v1, v1, [Landroidx/constraintlayout/core/b;

    iput-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    :goto_2a
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3b

    iget-object v3, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v3, v3, Lt/a;->a:Lt/c;

    invoke-virtual {v3, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    :cond_3b
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_42
    new-instance v0, Lt/a;

    invoke-direct {v0}, Lt/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    new-instance v1, Landroidx/constraintlayout/core/d;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/d;-><init>(Lt/a;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    new-instance v1, Landroidx/constraintlayout/core/b;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    return-void
.end method

.method public static n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I
    .registers 2

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz p0, :cond_b

    iget p0, p0, Landroidx/constraintlayout/core/SolverVariable;->e:F

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v0, v0, Lt/a;->b:Lt/c;

    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_14

    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    iput-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    goto :goto_19

    :cond_14
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    iput-object p1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    :goto_19
    iget p1, p0, Landroidx/constraintlayout/core/c;->n:I

    sget v1, Landroidx/constraintlayout/core/c;->q:I

    if-lt p1, v1, :cond_2d

    mul-int/lit8 v1, v1, 0x2

    sput v1, Landroidx/constraintlayout/core/c;->q:I

    iget-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_2d
    iget-object p1, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/core/c;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/c;->n:I

    aput-object v0, p1, v1

    return-object v0
.end method

.method public final b(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 15

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-ne p2, p5, :cond_1b

    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 p3, -0x40000000  # -2.0f

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto/16 :goto_8f

    :cond_1b
    const/high16 v2, 0x3f000000  # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000  # -1.0f

    if-nez v2, :cond_41

    iget-object p4, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p4, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    if-gtz p3, :cond_3b

    if-lez p7, :cond_8f

    :cond_3b
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_8f

    :cond_41
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_54

    iget-object p4, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p4, p1, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    int-to-float p1, p3

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_8f

    :cond_54
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_67

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    neg-int p1, p7

    int-to-float p1, p1

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_8f

    :cond_67
    iget-object v2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    mul-float/2addr v3, p4

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    mul-float/2addr v1, p4

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    if-gtz p3, :cond_87

    if-lez p7, :cond_8f

    :cond_87
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    :cond_8f
    :goto_8f
    const/16 p1, 0x8

    if-eq p8, p1, :cond_96

    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/core/b;->b(Landroidx/constraintlayout/core/c;I)V

    :cond_96
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/b;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/constraintlayout/core/c;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/c;->k:I

    if-ge v2, v4, :cond_13

    iget v2, v0, Landroidx/constraintlayout/core/c;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/c;->e:I

    if-lt v2, v4, :cond_16

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->o()V

    :cond_16
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    if-nez v2, :cond_1be

    iget-object v2, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_21

    goto :goto_83

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-nez v2, :cond_73

    iget-object v6, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v6}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v6

    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v6, :cond_44

    iget-object v8, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    iget v9, v8, Landroidx/constraintlayout/core/SolverVariable;->c:I

    if-ne v9, v5, :cond_3c

    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-nez v9, :cond_3c

    goto :goto_41

    :cond_3c
    iget-object v9, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_44
    iget-object v6, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_71

    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v6, :cond_6b

    iget-object v8, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v9, v8, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v9, :cond_5f

    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/b;->h(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/SolverVariable;Z)V

    goto :goto_68

    :cond_5f
    iget-object v9, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    iget v8, v8, Landroidx/constraintlayout/core/SolverVariable;->c:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v0, v8, v3}, Landroidx/constraintlayout/core/b;->i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V

    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_6b
    iget-object v6, v1, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_22

    :cond_71
    move v2, v3

    goto :goto_22

    :cond_73
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v2, :cond_83

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_83

    iput-boolean v3, v1, Landroidx/constraintlayout/core/b;->e:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/core/c;->a:Z

    :cond_83
    :goto_83
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/b;->e()Z

    move-result v2

    if-eqz v2, :cond_8a

    return-void

    :cond_8a
    iget v2, v1, Landroidx/constraintlayout/core/b;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_9b

    const/high16 v7, -0x40800000  # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Landroidx/constraintlayout/core/b;->b:F

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->f()V

    :cond_9b
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v2

    move v11, v6

    move v13, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_a8
    if-ge v8, v2, :cond_107

    iget-object v15, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v15, v8}, Landroidx/constraintlayout/core/b$a;->g(I)F

    move-result v15

    iget-object v4, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v4, v8}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    iget-object v5, v4, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v5, v7, :cond_dd

    if-nez v9, :cond_c3

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_cc

    goto :goto_d9

    :cond_c3
    cmpl-float v5, v11, v15

    if-lez v5, :cond_ce

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_cc

    goto :goto_d9

    :cond_cc
    const/4 v12, 0x0

    goto :goto_da

    :cond_ce
    if-nez v12, :cond_103

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_d6

    move v5, v3

    goto :goto_d7

    :cond_d6
    const/4 v5, 0x0

    :goto_d7
    if-eqz v5, :cond_103

    :goto_d9
    move v12, v3

    :goto_da
    move-object v9, v4

    move v11, v15

    goto :goto_103

    :cond_dd
    if-nez v9, :cond_103

    cmpg-float v5, v15, v6

    if-gez v5, :cond_103

    if-nez v10, :cond_ea

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_f3

    goto :goto_100

    :cond_ea
    cmpl-float v5, v13, v15

    if-lez v5, :cond_f5

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_f3

    goto :goto_100

    :cond_f3
    const/4 v14, 0x0

    goto :goto_101

    :cond_f5
    if-nez v14, :cond_103

    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->l:I

    if-gt v5, v3, :cond_fd

    move v5, v3

    goto :goto_fe

    :cond_fd
    const/4 v5, 0x0

    :goto_fe
    if-eqz v5, :cond_103

    :goto_100
    move v14, v3

    :goto_101
    move-object v10, v4

    move v13, v15

    :cond_103
    :goto_103
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_a8

    :cond_107
    if-eqz v9, :cond_10a

    goto :goto_10b

    :cond_10a
    move-object v9, v10

    :goto_10b
    if-nez v9, :cond_10f

    move v2, v3

    goto :goto_113

    :cond_10f
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    const/4 v2, 0x0

    :goto_113
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v4}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v4

    if-nez v4, :cond_11d

    iput-boolean v3, v1, Landroidx/constraintlayout/core/b;->e:Z

    :cond_11d
    if-eqz v2, :cond_1a6

    iget v2, v0, Landroidx/constraintlayout/core/c;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/constraintlayout/core/c;->e:I

    if-lt v2, v4, :cond_129

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->o()V

    :cond_129
    sget-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    iget v4, v0, Landroidx/constraintlayout/core/c;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/constraintlayout/core/c;->b:I

    iget v5, v0, Landroidx/constraintlayout/core/c;->i:I

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/constraintlayout/core/c;->i:I

    iput v4, v2, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iget-object v5, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v5, v5, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v2, v5, v4

    iput-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/c;->j:I

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->h(Landroidx/constraintlayout/core/b;)V

    iget v5, v0, Landroidx/constraintlayout/core/c;->j:I

    add-int/2addr v4, v3

    if-ne v5, v4, :cond_1a6

    iget-object v4, v0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v4, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v5}, Landroidx/constraintlayout/core/b$a;->clear()V

    const/4 v5, 0x0

    :goto_15b
    iget-object v7, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v7}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v7

    if-ge v5, v7, :cond_177

    iget-object v7, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    iget-object v8, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v8, v5}, Landroidx/constraintlayout/core/b$a;->g(I)F

    move-result v8

    iget-object v9, v4, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v9, v7, v8, v3}, Landroidx/constraintlayout/core/b$a;->e(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15b

    :cond_177
    iget-object v4, v0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/c;->r(Landroidx/constraintlayout/core/b;)V

    iget v4, v2, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a4

    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-ne v4, v2, :cond_18f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroidx/constraintlayout/core/b;->f([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    if-eqz v2, :cond_18f

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_18f
    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    if-nez v2, :cond_198

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    :cond_198
    iget-object v2, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v2, v2, Lt/a;->a:Lt/c;

    invoke-virtual {v2, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    iget v2, v0, Landroidx/constraintlayout/core/c;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroidx/constraintlayout/core/c;->j:I

    :cond_1a4
    move v2, v3

    goto :goto_1a7

    :cond_1a6
    const/4 v2, 0x0

    :goto_1a7
    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v4, :cond_1b8

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v5, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v4, v5, :cond_1b9

    iget v4, v1, Landroidx/constraintlayout/core/b;->b:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1b8

    goto :goto_1b9

    :cond_1b8
    const/4 v3, 0x0

    :cond_1b9
    :goto_1b9
    if-nez v3, :cond_1bc

    return-void

    :cond_1bc
    move v4, v2

    goto :goto_1bf

    :cond_1be
    const/4 v4, 0x0

    :goto_1bf
    if-nez v4, :cond_1c4

    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->h(Landroidx/constraintlayout/core/b;)V

    :cond_1c4
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 7

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1a

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    const/4 p1, 0x0

    :goto_b
    iget p2, p0, Landroidx/constraintlayout/core/c;->b:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_19

    iget-object p2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object p2, p2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_19
    return-void

    :cond_1a
    if-eq v0, v1, :cond_56

    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Landroidx/constraintlayout/core/b;->e:Z

    if-eqz v3, :cond_28

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_66

    :cond_28
    iget-object v3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v3}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v3

    if-nez v3, :cond_36

    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->e:Z

    int-to-float p1, p2

    iput p1, v0, Landroidx/constraintlayout/core/b;->b:F

    goto :goto_66

    :cond_36
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v0

    if-gez p2, :cond_48

    mul-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    iget-object p2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_52

    :cond_48
    int-to-float p2, p2

    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    iget-object p2, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_52
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    goto :goto_66

    :cond_56
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v0

    iput-object p1, v0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    int-to-float p2, p2

    iput p2, p1, Landroidx/constraintlayout/core/SolverVariable;->e:F

    iput p2, v0, Landroidx/constraintlayout/core/b;->b:F

    iput-boolean v2, v0, Landroidx/constraintlayout/core/b;->e:Z

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    :goto_66
    return-void
.end method

.method public final e(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 9

    const/16 v0, 0x8

    if-ne p4, v0, :cond_15

    iget-boolean v1, p2, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    if-eqz v1, :cond_15

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    return-void

    :cond_15
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_24

    if-gez p3, :cond_21

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_21
    int-to-float p3, p3

    iput p3, v1, Landroidx/constraintlayout/core/b;->b:F

    :cond_24
    const/high16 p3, -0x40800000  # -1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez v2, :cond_35

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2, p1, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_3f

    :cond_35
    iget-object v2, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v2, p1, v3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    iget-object p1, v1, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :goto_3f
    if-eq p4, v0, :cond_44

    invoke-virtual {v1, p0, p4}, Landroidx/constraintlayout/core/b;->b(Landroidx/constraintlayout/core/c;I)V

    :cond_44
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_26

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000  # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public final g(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .registers 8

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->l()Landroidx/constraintlayout/core/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->m()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/b;->d(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_26

    iget-object p1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result p1

    const/high16 p2, -0x40800000  # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object p2

    iget-object p3, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    :cond_26
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->c(Landroidx/constraintlayout/core/b;)V

    return-void
.end method

.method public final h(Landroidx/constraintlayout/core/b;)V
    .registers 9

    iget-boolean v0, p1, Landroidx/constraintlayout/core/b;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget p1, p1, Landroidx/constraintlayout/core/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    goto :goto_1d

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/c;->j:I

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    :goto_1d
    iget-boolean p1, p0, Landroidx/constraintlayout/core/c;->a:Z

    if-eqz p1, :cond_7f

    const/4 p1, 0x0

    move v0, p1

    :goto_23
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v0, v1, :cond_7d

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_34

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_34
    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7a

    iget-boolean v2, v1, Landroidx/constraintlayout/core/b;->e:Z

    if-eqz v2, :cond_7a

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/core/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/core/SolverVariable;->d(Landroidx/constraintlayout/core/c;F)V

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v2, v2, Lt/a;->a:Lt/c;

    invoke-virtual {v2, v1}, Lt/c;->release(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_54
    iget v4, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v1, v4, :cond_6e

    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->c:I

    if-ne v5, v1, :cond_68

    iput v4, v3, Landroidx/constraintlayout/core/SolverVariable;->c:I

    :cond_68
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_54

    :cond_6e
    if-ge v3, v4, :cond_74

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aput-object v2, v1, v3

    :cond_74
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/core/c;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_7d
    iput-boolean p1, p0, Landroidx/constraintlayout/core/c;->a:Z

    :cond_7f
    return-void
.end method

.method public final i()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/core/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public final j(I)Landroidx/constraintlayout/core/SolverVariable;
    .registers 6

    iget v0, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/c;->e:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/c;->b:I

    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/c;->i:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    iget-object p1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object p1, p1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, p1, v1

    iget-object p1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    iget-object v1, p1, Landroidx/constraintlayout/core/d;->i:Landroidx/constraintlayout/core/d$b;

    iput-object v0, v1, Landroidx/constraintlayout/core/d$b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->h:[F

    iget v2, v0, Landroidx/constraintlayout/core/SolverVariable;->d:I

    const/high16 v3, 0x3f800000  # 1.0f

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget v1, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/core/c;->e:I

    if-lt v1, v2, :cond_f

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    :cond_f
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_4d

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h()V

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    move-object v0, p1

    :cond_1f
    iget p1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_30

    iget v2, p0, Landroidx/constraintlayout/core/c;->b:I

    if-gt p1, v2, :cond_30

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v2, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, p1

    if-nez v2, :cond_4d

    :cond_30
    if-eq p1, v1, :cond_35

    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    :cond_35
    iget p1, p0, Landroidx/constraintlayout/core/c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/c;->b:I

    iget v1, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/c;->i:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v1, v1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, v1, p1

    :cond_4d
    return-object v0
.end method

.method public final l()Landroidx/constraintlayout/core/b;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v0, v0, Lt/a;->a:Lt/c;

    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/b;

    if-nez v0, :cond_14

    new-instance v0, Landroidx/constraintlayout/core/b;

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    goto :goto_22

    :cond_14
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/core/b$a;->clear()V

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/b;->b:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/core/b;->e:Z

    :goto_22
    return-object v0
.end method

.method public final m()Landroidx/constraintlayout/core/SolverVariable;
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/c;->e:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->o()V

    :cond_b
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->a(Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/c;->b:I

    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/c;->i:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->b:I

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v2, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final o()V
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/core/c;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/c;->d:I

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/b;

    iput-object v0, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    iget-object v0, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v1, v0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/c;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v1, v0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/c;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/core/c;->h:[Z

    iput v0, p0, Landroidx/constraintlayout/core/c;->e:I

    iput v0, p0, Landroidx/constraintlayout/core/c;->k:I

    return-void
.end method

.method public final p()V
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/d;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->i()V

    return-void

    :cond_c
    iget-boolean v0, p0, Landroidx/constraintlayout/core/c;->g:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget v2, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Landroidx/constraintlayout/core/b;->e:Z

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_22
    const/4 v0, 0x1

    :goto_23
    if-nez v0, :cond_2b

    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->q(Landroidx/constraintlayout/core/d;)V

    goto :goto_34

    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/c;->i()V

    goto :goto_34

    :cond_2f
    iget-object v0, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/c;->q(Landroidx/constraintlayout/core/d;)V

    :goto_34
    return-void
.end method

.method public final q(Landroidx/constraintlayout/core/d;)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_3
    iget v3, v0, Landroidx/constraintlayout/core/c;->j:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_21

    iget-object v3, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v2

    iget-object v6, v3, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v6, v7, :cond_16

    goto :goto_1e

    :cond_16
    iget v3, v3, Landroidx/constraintlayout/core/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1e

    move v2, v5

    goto :goto_22

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_b2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-nez v2, :cond_b2

    add-int/2addr v3, v5

    const v6, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v7, -0x1

    move v9, v7

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_31
    iget v12, v0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v8, v12, :cond_8b

    iget-object v12, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v12, v12, v8

    iget-object v13, v12, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v13, v13, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v13, v14, :cond_42

    goto :goto_86

    :cond_42
    iget-boolean v13, v12, Landroidx/constraintlayout/core/b;->e:Z

    if-eqz v13, :cond_47

    goto :goto_86

    :cond_47
    iget v13, v12, Landroidx/constraintlayout/core/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_86

    iget-object v13, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v13}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    move-result v13

    const/4 v14, 0x0

    :goto_54
    if-ge v14, v13, :cond_86

    iget-object v15, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v15, v14}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v15

    iget-object v1, v12, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v1, v15}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_67

    goto :goto_81

    :cond_67
    const/4 v4, 0x0

    :goto_68
    const/16 v5, 0x9

    if-ge v4, v5, :cond_81

    iget-object v5, v15, Landroidx/constraintlayout/core/SolverVariable;->g:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v6

    if-gez v17, :cond_77

    if-eq v4, v11, :cond_79

    :cond_77
    if-le v4, v11, :cond_7e

    :cond_79
    iget v10, v15, Landroidx/constraintlayout/core/SolverVariable;->b:I

    move v11, v4

    move v6, v5

    move v9, v8

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_81
    :goto_81
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_54

    :cond_86
    :goto_86
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_31

    :cond_8b
    if-eq v9, v7, :cond_a6

    iget-object v1, v0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v1, v1, v9

    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v7, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    iget-object v4, v0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v4, v4, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v4, v1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v9, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    invoke-virtual {v4, v0, v1}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    goto :goto_a7

    :cond_a6
    const/4 v2, 0x1

    :goto_a7
    iget v1, v0, Landroidx/constraintlayout/core/c;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_ae

    const/4 v2, 0x1

    :cond_ae
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_26

    :cond_b2
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/c;->r(Landroidx/constraintlayout/core/b;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/c;->i()V

    return-void
.end method

.method public final r(Landroidx/constraintlayout/core/b;)V
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/c;->i:I

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->h:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    :cond_10
    :goto_10
    if-nez v2, :cond_8c

    add-int/2addr v3, v1

    iget v4, p0, Landroidx/constraintlayout/core/c;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_1a

    return-void

    :cond_1a
    iget-object v4, p1, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v4, :cond_24

    iget-object v5, p0, Landroidx/constraintlayout/core/c;->h:[Z

    iget v4, v4, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aput-boolean v1, v5, v4

    :cond_24
    iget-object v4, p0, Landroidx/constraintlayout/core/c;->h:[Z

    invoke-interface {p1, v4}, Landroidx/constraintlayout/core/c$a;->a([Z)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    if-eqz v4, :cond_37

    iget-object v5, p0, Landroidx/constraintlayout/core/c;->h:[Z

    iget v6, v4, Landroidx/constraintlayout/core/SolverVariable;->b:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_35

    return-void

    :cond_35
    aput-boolean v1, v5, v6

    :cond_37
    if-eqz v4, :cond_8a

    const v5, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v6, -0x1

    move v7, v0

    move v8, v6

    :goto_3f
    iget v9, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v7, v9, :cond_75

    iget-object v9, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v9, v9, v7

    iget-object v10, v9, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v10, v10, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v10, v11, :cond_50

    goto :goto_72

    :cond_50
    iget-boolean v10, v9, Landroidx/constraintlayout/core/b;->e:Z

    if-eqz v10, :cond_55

    goto :goto_72

    :cond_55
    iget-object v10, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->a(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_72

    iget-object v10, v9, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_72

    iget v9, v9, Landroidx/constraintlayout/core/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_72

    move v8, v7

    move v5, v9

    :cond_72
    :goto_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    :cond_75
    if-le v8, v6, :cond_10

    iget-object v5, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v5, v5, v8

    iget-object v7, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v6, v7, Landroidx/constraintlayout/core/SolverVariable;->c:I

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/b;->g(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v4, v5, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    iput v8, v4, Landroidx/constraintlayout/core/SolverVariable;->c:I

    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/core/SolverVariable;->e(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;)V

    goto :goto_10

    :cond_8a
    move v2, v1

    goto :goto_10

    :cond_8c
    return-void
.end method

.method public final s()V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v3, v2, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v4, v3

    if-ge v1, v4, :cond_13

    aget-object v2, v3, v1

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    iget-object v1, v2, Lt/a;->b:Lt/c;

    iget-object v2, p0, Landroidx/constraintlayout/core/c;->m:[Landroidx/constraintlayout/core/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/core/c;->n:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    if-le v3, v4, :cond_20

    array-length v3, v2

    :cond_20
    move v4, v0

    :goto_21
    if-ge v4, v3, :cond_35

    aget-object v5, v2, v4

    iget v6, v1, Lt/c;->c:I

    iget-object v7, v1, Lt/c;->b:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_32

    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lt/c;->c:I

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_35
    iput v0, p0, Landroidx/constraintlayout/core/c;->n:I

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v1, v1, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Landroidx/constraintlayout/core/c;->b:I

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->c:Landroidx/constraintlayout/core/d;

    iput v0, v1, Landroidx/constraintlayout/core/d;->h:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/core/b;->b:F

    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/c;->i:I

    move v1, v0

    :goto_4c
    iget v3, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v1, v3, :cond_57

    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_57
    move v1, v0

    :goto_58
    iget v3, p0, Landroidx/constraintlayout/core/c;->j:I

    if-ge v1, v3, :cond_70

    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aget-object v3, v3, v1

    if-eqz v3, :cond_69

    iget-object v4, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    iget-object v4, v4, Lt/a;->a:Lt/c;

    invoke-virtual {v4, v3}, Lt/c;->release(Ljava/lang/Object;)Z

    :cond_69
    iget-object v3, p0, Landroidx/constraintlayout/core/c;->f:[Landroidx/constraintlayout/core/b;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_70
    iput v0, p0, Landroidx/constraintlayout/core/c;->j:I

    new-instance v0, Landroidx/constraintlayout/core/b;

    iget-object v1, p0, Landroidx/constraintlayout/core/c;->l:Lt/a;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/b;-><init>(Lt/a;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/c;->o:Landroidx/constraintlayout/core/b;

    return-void
.end method
