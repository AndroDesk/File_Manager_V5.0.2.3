.class public final Lw/g;
.super Ljava/lang/Object;
.source "Grouping.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "I",
            "Ljava/util/ArrayList<",
            "Lw/j;",
            ">;",
            "Lw/j;",
            ")",
            "Lw/j;"
        }
    .end annotation

    if-nez p1, :cond_5

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    goto :goto_7

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    :goto_7
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f

    if-eqz p3, :cond_11

    iget v3, p3, Lw/j;->b:I

    if-eq v0, v3, :cond_2f

    :cond_11
    move v3, v1

    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/j;

    iget v5, v4, Lw/j;->b:I

    if-ne v5, v0, :cond_2c

    if-eqz p3, :cond_2a

    invoke-virtual {p3, p1, v4}, Lw/j;->d(ILw/j;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2a
    move-object p3, v4

    goto :goto_32

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2f
    if-eq v0, v2, :cond_32

    return-object p3

    :cond_32
    :goto_32
    const/4 v0, 0x1

    if-nez p3, :cond_79

    instance-of v3, p0, Lv/b;

    if-eqz v3, :cond_6f

    move-object v3, p0

    check-cast v3, Lv/b;

    move v4, v1

    :goto_3d
    iget v5, v3, Lv/b;->t0:I

    if-ge v4, v5, :cond_56

    iget-object v5, v3, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    if-nez p1, :cond_4c

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    if-eq v6, v2, :cond_4c

    goto :goto_57

    :cond_4c
    if-ne p1, v0, :cond_53

    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    if-eq v6, v2, :cond_53

    goto :goto_57

    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_56
    move v6, v2

    :goto_57
    if-eq v6, v2, :cond_6f

    move v2, v1

    :goto_5a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/j;

    iget v4, v3, Lw/j;->b:I

    if-ne v4, v6, :cond_6c

    move-object p3, v3

    goto :goto_6f

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_6f
    :goto_6f
    if-nez p3, :cond_76

    new-instance p3, Lw/j;

    invoke-direct {p3, p1}, Lw/j;-><init>(I)V

    :cond_76
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_79
    invoke-virtual {p3, p0}, Lw/j;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_b9

    instance-of v2, p0, Landroidx/constraintlayout/core/widgets/e;

    if-eqz v2, :cond_90

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/core/widgets/e;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/e;->w0:I

    if-nez v2, :cond_8d

    move v1, v0

    :cond_8d
    invoke-virtual {v3, v1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    :cond_90
    if-nez p1, :cond_a1

    iget v0, p3, Lw/j;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    goto :goto_b4

    :cond_a1
    iget v0, p3, Lw/j;->b:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    :goto_b4
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    :cond_b9
    return-object p3
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .registers 9

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_13

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v3, :cond_13

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v4, :cond_11

    if-eq p0, v3, :cond_11

    goto :goto_13

    :cond_11
    move p0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move p0, v2

    :goto_14
    if-eq p3, v0, :cond_23

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p3, p2, :cond_23

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p3, v0, :cond_21

    if-eq p1, p2, :cond_21

    goto :goto_23

    :cond_21
    move p1, v1

    goto :goto_24

    :cond_23
    :goto_23
    move p1, v2

    :goto_24
    if-nez p0, :cond_2a

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    return v1

    :cond_2a
    :goto_2a
    return v2
.end method
