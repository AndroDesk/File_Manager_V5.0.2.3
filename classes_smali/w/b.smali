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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lw/b$a;

    invoke-direct {v0}, Lw/b$a;-><init>()V

    iput-object v0, p0, Lw/b;->b:Lw/b$a;

    iput-object p1, p0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$b;)Z
    .registers 9

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    iput-object v1, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    move-result v1

    iput v1, v0, Lw/b$a;->c:I

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()I

    move-result v1

    iput v1, v0, Lw/b$a;->d:I

    iget-object v0, p0, Lw/b;->b:Lw/b$a;

    iput-boolean v2, v0, Lw/b$a;->i:Z

    iput p1, v0, Lw/b$a;->j:I

    iget-object p1, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v1, :cond_2a

    move p1, v3

    goto :goto_2b

    :cond_2a
    move p1, v2

    :goto_2b
    iget-object v4, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v1, :cond_31

    move v1, v3

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    const/4 v4, 0x0

    if-eqz p1, :cond_3d

    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3d

    move p1, v3

    goto :goto_3e

    :cond_3d
    move p1, v2

    :goto_3e
    if-eqz v1, :cond_48

    iget v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_48

    move v1, v3

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    const/4 v4, 0x4

    if-eqz p1, :cond_56

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget p1, p1, v2

    if-ne p1, v4, :cond_56

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, v0, Lw/b$a;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_56
    if-eqz v1, :cond_62

    iget-object p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:[I

    aget p1, p1, v3

    if-ne p1, v4, :cond_62

    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p1, v0, Lw/b$a;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_62
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$c;

    invoke-virtual {p3, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$c;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Lw/b$a;)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget p1, p1, Lw/b$a;->e:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget p1, p1, Lw/b$a;->f:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    iget-object p1, p0, Lw/b;->b:Lw/b$a;

    iget-boolean p3, p1, Lw/b$a;->h:Z

    iput-boolean p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    iget p3, p1, Lw/b$a;->g:I

    iput p3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    if-lez p3, :cond_82

    goto :goto_83

    :cond_82
    move v3, v2

    :goto_83
    iput-boolean v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    iput v2, p1, Lw/b$a;->j:I

    iget-boolean p1, p1, Lw/b$a;->i:Z

    return p1
.end method

.method public final b(Landroidx/constraintlayout/core/widgets/d;III)V
    .registers 8

    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    const/4 v2, 0x0

    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    if-gez v0, :cond_14

    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    goto :goto_16

    :cond_14
    iput v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:I

    :goto_16
    if-gez v1, :cond_1b

    iput v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    goto :goto_1d

    :cond_1b
    iput v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:I

    :goto_1d
    iget-object p1, p0, Lw/b;->c:Landroidx/constraintlayout/core/widgets/d;

    iput p2, p1, Landroidx/constraintlayout/core/widgets/d;->v0:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/d;->N()V

    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/widgets/d;)V
    .registers 10

    iget-object v0, p0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2c

    iget-object v4, p1, Lv/c;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_24

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_29

    :cond_24
    iget-object v3, p0, Lw/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/d;->u0:Lw/e;

    iput-boolean v3, p1, Lw/e;->b:Z

    return-void
.end method
