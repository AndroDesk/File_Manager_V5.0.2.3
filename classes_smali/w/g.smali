.class public final Lw/g;
.super Ljava/lang/Object;
.source "Grouping.java"


# direct methods
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

    .line 1
    if-nez p1, :cond_5

    .line 3
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 8
    :goto_7
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_2f

    .line 12
    if-eqz p3, :cond_11

    .line 14
    iget v3, p3, Lw/j;->b:I

    .line 16
    if-eq v0, v3, :cond_2f

    .line 18
    :cond_11
    move v3, v1

    .line 19
    :goto_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_32

    .line 25
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lw/j;

    .line 31
    iget v5, v4, Lw/j;->b:I

    .line 33
    if-ne v5, v0, :cond_2c

    .line 35
    if-eqz p3, :cond_2a

    .line 37
    invoke-virtual {p3, p1, v4}, Lw/j;->d(ILw/j;)V

    .line 40
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    :cond_2a
    move-object p3, v4

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_12

    .line 48
    :cond_2f
    if-eq v0, v2, :cond_32

    .line 50
    return-object p3

    .line 51
    :cond_32
    :goto_32
    const/4 v0, 0x1

    .line 52
    if-nez p3, :cond_79

    .line 54
    instance-of v3, p0, Lv/b;

    .line 56
    if-eqz v3, :cond_6f

    .line 58
    move-object v3, p0

    .line 59
    check-cast v3, Lv/b;

    .line 61
    move v4, v1

    .line 62
    :goto_3d
    iget v5, v3, Lv/b;->t0:I

    .line 64
    if-ge v4, v5, :cond_56

    .line 66
    iget-object v5, v3, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 68
    aget-object v5, v5, v4

    .line 70
    if-nez p1, :cond_4c

    .line 72
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 74
    if-eq v6, v2, :cond_4c

    .line 76
    goto :goto_57

    .line 77
    :cond_4c
    if-ne p1, v0, :cond_53

    .line 79
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 81
    if-eq v6, v2, :cond_53

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    add-int/lit8 v4, v4, 0x1

    .line 86
    goto :goto_3d

    .line 87
    :cond_56
    move v6, v2

    .line 88
    :goto_57
    if-eq v6, v2, :cond_6f

    .line 90
    move v2, v1

    .line 91
    :goto_5a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 94
    move-result v3

    .line 95
    if-ge v2, v3, :cond_6f

    .line 97
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lw/j;

    .line 103
    iget v4, v3, Lw/j;->b:I

    .line 105
    if-ne v4, v6, :cond_6c

    .line 107
    move-object p3, v3

    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_5a

    .line 112
    :cond_6f
    :goto_6f
    if-nez p3, :cond_76

    .line 114
    new-instance p3, Lw/j;

    .line 116
    invoke-direct {p3, p1}, Lw/j;-><init>(I)V

    .line 119
    :cond_76
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_79
    invoke-virtual {p3, p0}, Lw/j;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_b9

    .line 128
    instance-of v2, p0, Landroidx/constraintlayout/core/widgets/e;

    .line 130
    if-eqz v2, :cond_90

    .line 132
    move-object v2, p0

    .line 133
    check-cast v2, Landroidx/constraintlayout/core/widgets/e;

    .line 135
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/e;->v0:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 137
    iget v2, v2, Landroidx/constraintlayout/core/widgets/e;->w0:I

    .line 139
    if-nez v2, :cond_8d

    .line 141
    move v1, v0

    .line 142
    :cond_8d
    invoke-virtual {v3, v1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 145
    :cond_90
    if-nez p1, :cond_a1

    .line 147
    iget v0, p3, Lw/j;->b:I

    .line 149
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 151
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 153
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 161
    goto :goto_b4

    .line 162
    :cond_a1
    iget v0, p3, Lw/j;->b:I

    .line 164
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 166
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 168
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 171
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 173
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 178
    invoke-virtual {v0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 181
    :goto_b4
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->R:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 183
    invoke-virtual {p0, p1, p3, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(ILw/j;Ljava/util/ArrayList;)V

    .line 186
    :cond_b9
    return-object p3
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)Z
    .registers 9

    .line 1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v0, :cond_13

    .line 7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 9
    if-eq p2, v3, :cond_13

    .line 11
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    if-ne p2, v4, :cond_11

    .line 15
    if-eq p0, v3, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    move p0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    move p0, v2

    .line 21
    :goto_14
    if-eq p3, v0, :cond_23

    .line 23
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 25
    if-eq p3, p2, :cond_23

    .line 27
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    if-ne p3, v0, :cond_21

    .line 31
    if-eq p1, p2, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    move p1, v1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    :goto_23
    move p1, v2

    .line 37
    :goto_24
    if-nez p0, :cond_2a

    .line 39
    if-eqz p1, :cond_29

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    return v1

    .line 43
    :cond_2a
    :goto_2a
    return v2
.end method
