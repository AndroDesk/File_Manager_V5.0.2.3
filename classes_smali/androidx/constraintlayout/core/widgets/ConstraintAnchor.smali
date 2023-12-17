.class public final Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public final d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public final e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

.field public f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public g:I

.field public h:I

.field public i:Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 10
    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 14
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;II)V
    .registers 5

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g()V

    .line 6
    return-void

    .line 7
    :cond_6
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 11
    if-nez v0, :cond_13

    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 20
    :cond_13
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 22
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1c
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 31
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 33
    return-void
.end method

.method public final b(ILw/j;Ljava/util/ArrayList;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1a

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 21
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    invoke-static {v1, p1, p3, p2}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 26
    goto :goto_8

    .line 27
    :cond_1a
    return-void
.end method

.method public final c()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b:I

    .line 9
    return v0
.end method

.method public final d()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 5
    const/16 v1, 0x8

    .line 7
    if-ne v0, v1, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 13
    const/high16 v2, -0x80000000

    .line 15
    if-eq v0, v2, :cond_1b

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    if-eqz v2, :cond_1b

    .line 21
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 25
    if-ne v2, v1, :cond_1b

    .line 27
    return v0

    .line 28
    :cond_1b
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 30
    return v0
.end method

.method public final e()Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_4f

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$a;->a:[I

    .line 28
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 33
    move-result v4

    .line 34
    aget v3, v3, v4

    .line 36
    packed-switch v3, :pswitch_data_50

    .line 39
    new-instance v0, Ljava/lang/AssertionError;

    .line 41
    iget-object v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 50
    throw v0

    .line 51
    :pswitch_32  #0x5
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 53
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 55
    goto :goto_47

    .line 56
    :pswitch_37  #0x4
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 58
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 60
    goto :goto_47

    .line 61
    :pswitch_3c  #0x3
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 63
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 65
    goto :goto_47

    .line 66
    :pswitch_41  #0x2
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 70
    goto :goto_47

    .line 71
    :pswitch_46  #0x1, 0x6, 0x7, 0x8, 0x9
    const/4 v2, 0x0

    .line 72
    :goto_47
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_a

    .line 78
    const/4 v0, 0x1

    .line 79
    return v0

    .line 80
    :cond_4f
    return v1

    .line 81
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_41  #00000002
        :pswitch_3c  #00000003
        :pswitch_37  #00000004
        :pswitch_32  #00000005
        :pswitch_46  #00000006
        :pswitch_46  #00000007
        :pswitch_46  #00000008
        :pswitch_46  #00000009
    .end packed-switch
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    if-eqz v0, :cond_6

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

.method public final g()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1a

    .line 6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 8
    if-eqz v0, :cond_1a

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 15
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1a

    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 25
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 27
    :cond_1a
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->a:Ljava/util/HashSet;

    .line 29
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 34
    const/high16 v1, -0x80000000

    .line 36
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->h:I

    .line 38
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b:I

    .line 42
    return-void
.end method

.method public final h()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    if-nez v0, :cond_e

    .line 5
    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    .line 7
    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    .line 9
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->i:Landroidx/constraintlayout/core/SolverVariable;

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->c()V

    .line 18
    :goto_11
    return-void
.end method

.method public final i(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b:I

    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->c:Z

    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
