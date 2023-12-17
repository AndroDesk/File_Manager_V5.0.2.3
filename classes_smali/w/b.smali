.class public final Lw/b;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/b$a;,
        Lw/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lw/b$a;

.field public c:Landroidx/constraintlayout/core/widgets/d;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lw/b$a;

    .line 13
    invoke-direct {v0}, Lw/b$a;-><init>()V

    .line 16
    iput-object v0, p0, Lw/b;->b:Lw/b$a;

    .line 18
    iput-object p1, p0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    .line 3
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v3, v1, v2

    .line 8
    iput-object v3, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    const/4 v3, 0x1

    .line 11
    aget-object v1, v1, v3

    .line 13
    iput-object v1, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 15
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 18
    move-result v1

    .line 19
    iput v1, v0, Lw/b$a;->c:I

    .line 21
    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    .line 23
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lw/b$a;->d:I

    .line 29
    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    .line 31
    iput-boolean v2, v0, Lw/b$a;->i:Z

    .line 33
    iput p1, v0, Lw/b$a;->j:I

    .line 35
    iget-object p1, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 37
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 39
    if-ne p1, v1, :cond_2a

    .line 41
    move p1, v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move p1, v2

    .line 44
    :goto_2b
    iget-object v4, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 46
    if-ne v4, v1, :cond_31

    .line 48
    move v1, v3

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v1, v2

    .line 51
    :goto_32
    const/4 v4, 0x0

    .line 52
    if-eqz p1, :cond_3d

    .line 54
    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 56
    cmpl-float p1, p1, v4

    .line 58
    if-lez p1, :cond_3d

    .line 60
    move p1, v3

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move p1, v2

    .line 63
    :goto_3e
    if-eqz v1, :cond_48

    .line 65
    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 67
    cmpl-float v1, v1, v4

    .line 69
    if-lez v1, :cond_48

    .line 71
    move v1, v3

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    move v1, v2

    .line 74
    :goto_49
    const/4 v4, 0x4

    .line 75
    if-eqz p1, :cond_56

    .line 77
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 79
    aget p1, p1, v2

    .line 81
    if-ne p1, v4, :cond_56

    .line 83
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 85
    iput-object p1, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 87
    :cond_56
    if-eqz v1, :cond_62

    .line 89
    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    .line 91
    aget p1, p1, v3

    .line 93
    if-ne p1, v4, :cond_62

    .line 95
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 97
    iput-object p1, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 99
    :cond_62
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    .line 101
    invoke-virtual {p3, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    .line 104
    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    .line 106
    iget p1, p1, Lw/b$a;->e:I

    .line 108
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 111
    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    .line 113
    iget p1, p1, Lw/b$a;->f:I

    .line 115
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 118
    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    .line 120
    iget-boolean p3, p1, Lw/b$a;->h:Z

    .line 122
    iput-boolean p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 124
    iget p3, p1, Lw/b$a;->g:I

    .line 126
    iput p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 128
    if-lez p3, :cond_82

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move v3, v2

    .line 132
    :goto_83
    iput-boolean v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 134
    iput v2, p1, Lw/b$a;->j:I

    .line 136
    iget-boolean p1, p1, Lw/b$a;->i:Z

    .line 138
    return p1
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/d;III)V
    .registers 8

    .line 1
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 3
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 8
    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 10
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 13
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 16
    if-gez v0, :cond_14

    .line 18
    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    iput v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    .line 23
    :goto_16
    if-gez v1, :cond_1b

    .line 25
    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    iput v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    .line 30
    :goto_1d
    iget-object p1, p0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    .line 32
    iput p2, p1, Landroidx/constraintlayout/core/widgets/d;->v0:I

    .line 34
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/d;->N()V

    .line 37
    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_d
    const/4 v3, 0x1

    .line 15
    if-ge v2, v0, :cond_2c

    .line 17
    iget-object v4, p1, Lv/c;->s0:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 25
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 27
    aget-object v6, v5, v1

    .line 29
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    if-eq v6, v7, :cond_24

    .line 33
    aget-object v3, v5, v3

    .line 35
    if-ne v3, v7, :cond_29

    .line 37
    :cond_24
    iget-object v3, p0, Lw/b;->a:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_d

    .line 45
    :cond_2c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    .line 47
    iput-boolean v3, p1, Lw/e;->b:Z

    .line 49
    return-void
.end method
