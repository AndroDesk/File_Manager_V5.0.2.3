.class public Landroidx/constraintlayout/core/b;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/core/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/b$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/core/SolverVariable;

.field public b:F

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroidx/constraintlayout/core/b$a;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/b;->e:Z

    return-void
.end method

.method public constructor <init>(Lt/a;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/constraintlayout/core/b;->e:Z

    .line 11
    new-instance v0, Landroidx/constraintlayout/core/a;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/a;-><init>(Landroidx/constraintlayout/core/b;Lt/a;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    return-void
.end method


# virtual methods
.method public a([Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/b;->f([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final b(Landroidx/constraintlayout/core/c;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 3
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x3f800000  # 1.0f

    .line 9
    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 14
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/c;->j(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 17
    move-result-object p1

    .line 18
    const/high16 p2, -0x40800000  # -1.0f

    .line 20
    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 23
    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_b

    .line 4
    if-gez p4, :cond_8

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_8
    int-to-float p4, p4

    .line 10
    iput p4, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 12
    :cond_b
    const/high16 p4, -0x40800000  # -1.0f

    .line 14
    const/high16 v1, 0x3f800000  # 1.0f

    .line 16
    if-nez v0, :cond_21

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 20
    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 23
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 25
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 28
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 30
    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 33
    goto :goto_30

    .line 34
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 36
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 41
    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 46
    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 49
    :goto_30
    return-void
.end method

.method public final d(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_b

    .line 4
    if-gez p4, :cond_8

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_8
    int-to-float p4, p4

    .line 10
    iput p4, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 12
    :cond_b
    const/high16 p4, -0x40800000  # -1.0f

    .line 14
    const/high16 v1, 0x3f800000  # 1.0f

    .line 16
    if-nez v0, :cond_21

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 20
    invoke-interface {v0, p1, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 23
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 25
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 28
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 30
    invoke-interface {p1, p3, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 33
    goto :goto_30

    .line 34
    :cond_21
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 36
    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 39
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 41
    invoke-interface {p1, p2, p4}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 46
    invoke-interface {p1, p3, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 49
    :goto_30
    return-void
.end method

.method public e()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    if-nez v0, :cond_15

    .line 5
    iget v0, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-nez v0, :cond_15

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 14
    invoke-interface {v0}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_15

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    return v0
.end method

.method public final f([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 3
    invoke-interface {v0}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v1

    .line 11
    :goto_a
    if-ge v3, v0, :cond_39

    .line 13
    iget-object v5, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 15
    invoke-interface {v5, v3}, Landroidx/constraintlayout/core/b$a;->g(I)F

    .line 18
    move-result v5

    .line 19
    cmpg-float v6, v5, v1

    .line 21
    if-gez v6, :cond_36

    .line 23
    iget-object v6, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 25
    invoke-interface {v6, v3}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 28
    move-result-object v6

    .line 29
    if-eqz p1, :cond_24

    .line 31
    iget v7, v6, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 33
    aget-boolean v7, p1, v7

    .line 35
    if-nez v7, :cond_36

    .line 37
    :cond_24
    if-eq v6, p2, :cond_36

    .line 39
    iget-object v7, v6, Landroidx/constraintlayout/core/SolverVariable;->i:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 41
    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 43
    if-eq v7, v8, :cond_30

    .line 45
    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 47
    if-ne v7, v8, :cond_36

    .line 49
    :cond_30
    cmpg-float v7, v5, v4

    .line 51
    if-gez v7, :cond_36

    .line 53
    move v4, v5

    .line 54
    move-object v2, v6

    .line 55
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_a

    .line 58
    :cond_39
    return-object v2
.end method

.method public final g(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    const/high16 v1, -0x40800000  # -1.0f

    .line 5
    if-eqz v0, :cond_13

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 9
    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/core/b$a;->c(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, v0, Landroidx/constraintlayout/core/SolverVariable;->c:I

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 20
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/core/b$a;->h(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 26
    move-result v0

    .line 27
    mul-float/2addr v0, v1

    .line 28
    iput-object p1, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 30
    const/high16 p1, 0x3f800000  # 1.0f

    .line 32
    cmpl-float p1, v0, p1

    .line 34
    if-nez p1, :cond_24

    .line 36
    return-void

    .line 37
    :cond_24
    iget p1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 39
    div-float/2addr p1, v0

    .line 40
    iput p1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 42
    iget-object p1, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 44
    invoke-interface {p1, v0}, Landroidx/constraintlayout/core/b$a;->j(F)V

    .line 47
    return-void
.end method

.method public final h(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .registers 7

    .line 1
    if-eqz p2, :cond_2c

    .line 3
    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->f:Z

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_2c

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 10
    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/b$a;->i(Landroidx/constraintlayout/core/SolverVariable;)F

    .line 13
    move-result v0

    .line 14
    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 16
    iget v2, p2, Landroidx/constraintlayout/core/SolverVariable;->e:F

    .line 18
    mul-float/2addr v2, v0

    .line 19
    add-float/2addr v2, v1

    .line 20
    iput v2, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 24
    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/b$a;->h(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 27
    if-eqz p3, :cond_1f

    .line 29
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->b(Landroidx/constraintlayout/core/b;)V

    .line 32
    :cond_1f
    iget-object p2, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 34
    invoke-interface {p2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2c

    .line 40
    const/4 p2, 0x1

    .line 41
    iput-boolean p2, p0, Landroidx/constraintlayout/core/b;->e:Z

    .line 43
    iput-boolean p2, p1, Landroidx/constraintlayout/core/c;->a:Z

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public i(Landroidx/constraintlayout/core/c;Landroidx/constraintlayout/core/b;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 3
    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/b$a;->b(Landroidx/constraintlayout/core/b;Z)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 9
    iget v2, p2, Landroidx/constraintlayout/core/b;->b:F

    .line 11
    mul-float/2addr v2, v0

    .line 12
    add-float/2addr v2, v1

    .line 13
    iput v2, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 15
    if-eqz p3, :cond_15

    .line 17
    iget-object p2, p2, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 19
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->b(Landroidx/constraintlayout/core/b;)V

    .line 22
    :cond_15
    iget-object p2, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 24
    if-eqz p2, :cond_26

    .line 26
    iget-object p2, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 28
    invoke-interface {p2}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_26

    .line 34
    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Landroidx/constraintlayout/core/b;->e:Z

    .line 37
    iput-boolean p2, p1, Landroidx/constraintlayout/core/c;->a:Z

    .line 39
    :cond_26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, "0"

    .line 7
    goto :goto_16

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/core/b;->a:Landroidx/constraintlayout/core/SolverVariable;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    :goto_16
    const-string v1, " = "

    .line 25
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v1, v1, v2

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v1, :cond_34

    .line 38
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    iget v1, p0, Landroidx/constraintlayout/core/b;->b:F

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    move v1, v4

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v1, v3

    .line 54
    :goto_35
    iget-object v5, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 56
    invoke-interface {v5}, Landroidx/constraintlayout/core/b$a;->getCurrentSize()I

    .line 59
    move-result v5

    .line 60
    :goto_3b
    if-ge v3, v5, :cond_9a

    .line 62
    iget-object v6, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 64
    invoke-interface {v6, v3}, Landroidx/constraintlayout/core/b$a;->d(I)Landroidx/constraintlayout/core/SolverVariable;

    .line 67
    move-result-object v6

    .line 68
    if-nez v6, :cond_46

    .line 70
    goto :goto_97

    .line 71
    :cond_46
    iget-object v7, p0, Landroidx/constraintlayout/core/b;->d:Landroidx/constraintlayout/core/b$a;

    .line 73
    invoke-interface {v7, v3}, Landroidx/constraintlayout/core/b$a;->g(I)F

    .line 76
    move-result v7

    .line 77
    cmpl-float v8, v7, v2

    .line 79
    if-nez v8, :cond_51

    .line 81
    goto :goto_97

    .line 82
    :cond_51
    invoke-virtual {v6}, Landroidx/constraintlayout/core/SolverVariable;->toString()Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    const/high16 v9, -0x40800000  # -1.0f

    .line 88
    if-nez v1, :cond_64

    .line 90
    cmpg-float v1, v7, v2

    .line 92
    if-gez v1, :cond_74

    .line 94
    const-string v1, "- "

    .line 96
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    goto :goto_73

    .line 101
    :cond_64
    if-lez v8, :cond_6d

    .line 103
    const-string v1, " + "

    .line 105
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    goto :goto_74

    .line 110
    :cond_6d
    const-string v1, " - "

    .line 112
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    :goto_73
    mul-float/2addr v7, v9

    .line 117
    :cond_74
    :goto_74
    const/high16 v1, 0x3f800000  # 1.0f

    .line 119
    cmpl-float v1, v7, v1

    .line 121
    if-nez v1, :cond_7f

    .line 123
    invoke-static {v0, v6}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    goto :goto_96

    .line 128
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " "

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    :goto_96
    move v1, v4

    .line 152
    :goto_97
    add-int/lit8 v3, v3, 0x1

    .line 154
    goto :goto_3b

    .line 155
    :cond_9a
    if-nez v1, :cond_a2

    .line 157
    const-string v1, "0.0"

    .line 159
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    :cond_a2
    return-object v0
.end method
