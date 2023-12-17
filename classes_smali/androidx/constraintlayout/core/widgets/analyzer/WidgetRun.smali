.class public abstract Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Lw/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public c:Lw/i;

.field public d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public f:I

.field public g:Z

.field public h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

.field public i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

.field public j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->f:I

    .line 14
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 16
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 18
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 23
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 25
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 30
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 34
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 36
    return-void
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public static h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .registers 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_6

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 11
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$a;->a:[I

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p0

    .line 17
    aget p0, v2, p0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq p0, v2, :cond_36

    .line 22
    const/4 v2, 0x2

    .line 23
    if-eq p0, v2, :cond_31

    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq p0, v2, :cond_2c

    .line 28
    const/4 v2, 0x4

    .line 29
    if-eq p0, v2, :cond_27

    .line 31
    const/4 v2, 0x5

    .line 32
    if-eq p0, v2, :cond_22

    .line 34
    goto :goto_3a

    .line 35
    :cond_22
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 39
    goto :goto_3a

    .line 40
    :cond_27
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/d;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 44
    goto :goto_3a

    .line 45
    :cond_2c
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 49
    goto :goto_3a

    .line 50
    :cond_31
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    goto :goto_3a

    .line 55
    :cond_36
    iget-object p0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 59
    :goto_3a
    return-object v0
.end method

.method public static i(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .registers 4

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_6

    .line 6
    return-object v0

    .line 7
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    if-nez p1, :cond_d

    .line 11
    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget-object p1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 16
    :goto_f
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 18
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$a;->a:[I

    .line 20
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    move-result p0

    .line 24
    aget p0, v1, p0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eq p0, v1, :cond_29

    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq p0, v1, :cond_26

    .line 32
    const/4 v1, 0x3

    .line 33
    if-eq p0, v1, :cond_29

    .line 35
    const/4 v1, 0x5

    .line 36
    if-eq p0, v1, :cond_26

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 44
    :goto_2b
    return-object v0
.end method


# virtual methods
.method public a(Lw/d;)V
    .registers 2

    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/a;)V
    .registers 7

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iput p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->h:I

    .line 15
    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 17
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object p2, p4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .registers 4

    .line 1
    if-nez p2, :cond_15

    .line 3
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 7
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:I

    .line 9
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p2

    .line 13
    if-lez v0, :cond_12

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result p2

    .line 19
    :cond_12
    if-eq p2, p1, :cond_28

    .line 21
    goto :goto_27

    .line 22
    :cond_15
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->z:I

    .line 26
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:I

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    if-lez v0, :cond_25

    .line 34
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result p2

    .line 38
    :cond_25
    if-eq p2, p1, :cond_28

    .line 40
    :goto_27
    move p1, p2

    .line 41
    :cond_28
    return p1
.end method

.method public j()J
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 3
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 5
    if-eqz v1, :cond_a

    .line 7
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_a
    const-wide/16 v0, 0x0

    .line 13
    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .registers 16

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 11
    if-eqz v2, :cond_f5

    .line 13
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 15
    if-nez v2, :cond_12

    .line 17
    goto/16 :goto_f5

    .line 19
    :cond_12
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 21
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 24
    move-result p1

    .line 25
    add-int/2addr p1, v2

    .line 26
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 28
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->d()I

    .line 31
    move-result p2

    .line 32
    sub-int/2addr v2, p2

    .line 33
    sub-int p2, v2, p1

    .line 35
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 37
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 39
    const/high16 v5, 0x3f000000  # 0.5f

    .line 41
    if-nez v4, :cond_b4

    .line 43
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 47
    if-ne v4, v6, :cond_b4

    .line 49
    iget v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 51
    if-eqz v4, :cond_ad

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eq v4, v7, :cond_9d

    .line 56
    const/4 v8, 0x2

    .line 57
    if-eq v4, v8, :cond_75

    .line 59
    const/4 v8, 0x3

    .line 60
    if-eq v4, v8, :cond_3f

    .line 62
    goto/16 :goto_b4

    .line 64
    :cond_3f
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 66
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 68
    iget-object v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 70
    if-ne v10, v6, :cond_56

    .line 72
    iget v10, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 74
    if-ne v10, v8, :cond_56

    .line 76
    iget-object v10, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 78
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    if-ne v11, v6, :cond_56

    .line 82
    iget v6, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a:I

    .line 84
    if-ne v6, v8, :cond_56

    .line 86
    goto :goto_b4

    .line 87
    :cond_56
    if-nez p3, :cond_5a

    .line 89
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 91
    :cond_5a
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 93
    iget-boolean v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 95
    if-eqz v8, :cond_b4

    .line 97
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:F

    .line 99
    if-ne p3, v7, :cond_6b

    .line 101
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 103
    int-to-float v6, v6

    .line 104
    div-float/2addr v6, v4

    .line 105
    add-float/2addr v6, v5

    .line 106
    float-to-int v4, v6

    .line 107
    goto :goto_71

    .line 108
    :cond_6b
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 110
    int-to-float v6, v6

    .line 111
    mul-float/2addr v4, v6

    .line 112
    add-float/2addr v4, v5

    .line 113
    float-to-int v4, v4

    .line 114
    :goto_71
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 117
    goto :goto_b4

    .line 118
    :cond_75
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 120
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 122
    if-eqz v6, :cond_b4

    .line 124
    if-nez p3, :cond_80

    .line 126
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/c;

    .line 128
    goto :goto_82

    .line 129
    :cond_80
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/d;

    .line 131
    :goto_82
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 133
    iget-boolean v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 135
    if-eqz v7, :cond_b4

    .line 137
    if-nez p3, :cond_8d

    .line 139
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:F

    .line 141
    goto :goto_8f

    .line 142
    :cond_8d
    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A:F

    .line 144
    :goto_8f
    iget v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 146
    int-to-float v6, v6

    .line 147
    mul-float/2addr v6, v4

    .line 148
    add-float/2addr v6, v5

    .line 149
    float-to-int v4, v6

    .line 150
    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 153
    move-result v4

    .line 154
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 157
    goto :goto_b4

    .line 158
    :cond_9d
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->m:I

    .line 160
    invoke-virtual {p0, v3, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 163
    move-result v3

    .line 164
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 166
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 169
    move-result v3

    .line 170
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 173
    goto :goto_b4

    .line 174
    :cond_ad
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g(II)I

    .line 177
    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    .line 181
    :cond_b4
    :goto_b4
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 183
    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 185
    if-nez v4, :cond_bb

    .line 187
    return-void

    .line 188
    :cond_bb
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 190
    if-ne v3, p2, :cond_ca

    .line 192
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 194
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 197
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 199
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 202
    return-void

    .line 203
    :cond_ca
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 205
    if-nez p3, :cond_d1

    .line 207
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:F

    .line 209
    goto :goto_d3

    .line 210
    :cond_d1
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:F

    .line 212
    :goto_d3
    if-ne v0, v1, :cond_da

    .line 214
    iget p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 216
    iget v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 218
    move p2, v5

    .line 219
    :cond_da
    sub-int/2addr v2, p1

    .line 220
    sub-int/2addr v2, v3

    .line 221
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 223
    int-to-float p1, p1

    .line 224
    add-float/2addr p1, v5

    .line 225
    int-to-float v0, v2

    .line 226
    mul-float/2addr v0, p2

    .line 227
    add-float/2addr v0, p1

    .line 228
    float-to-int p1, v0

    .line 229
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 232
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 234
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 236
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 238
    iget-object p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 240
    iget p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 242
    add-int/2addr p2, p3

    .line 243
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 246
    :cond_f5
    :goto_f5
    return-void
.end method
