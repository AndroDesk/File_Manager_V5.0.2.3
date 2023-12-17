.class public final Lw/j;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/j$a;
    }
.end annotation


# static fields
.field public static f:I


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lw/j;->d:Ljava/util/ArrayList;

    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lw/j;->e:I

    .line 17
    sget v0, Lw/j;->f:I

    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 21
    sput v1, Lw/j;->f:I

    .line 23
    iput v0, p0, Lw/j;->b:I

    .line 25
    iput p1, p0, Lw/j;->c:I

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public final b(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lw/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lw/j;->e:I

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_28

    .line 12
    if-lez v0, :cond_28

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_28

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lw/j;

    .line 27
    iget v3, p0, Lw/j;->e:I

    .line 29
    iget v4, v2, Lw/j;->b:I

    .line 31
    if-ne v3, v4, :cond_25

    .line 33
    iget v3, p0, Lw/j;->c:I

    .line 35
    invoke-virtual {p0, v3, v2}, Lw/j;->d(ILw/j;)V

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    if-nez v0, :cond_2d

    .line 43
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_2d
    return-void
.end method

.method public final c(Landroidx/constraintlayout/core/c;I)I
    .registers 8

    .line 1
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    check-cast v2, Landroidx/constraintlayout/core/widgets/d;

    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->s()V

    .line 26
    invoke-virtual {v2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 29
    move v3, v1

    .line 30
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v4

    .line 34
    if-ge v3, v4, :cond_2f

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 42
    invoke-virtual {v4, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b(Landroidx/constraintlayout/core/c;Z)V

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_1d

    .line 48
    :cond_2f
    if-nez p2, :cond_38

    .line 50
    iget v3, v2, Landroidx/constraintlayout/core/widgets/d;->B0:I

    .line 52
    if-lez v3, :cond_38

    .line 54
    invoke-static {v2, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    .line 57
    :cond_38
    const/4 v3, 0x1

    .line 58
    if-ne p2, v3, :cond_42

    .line 60
    iget v4, v2, Landroidx/constraintlayout/core/widgets/d;->C0:I

    .line 62
    if-lez v4, :cond_42

    .line 64
    invoke-static {v2, p1, v0, v3}, Landroidx/constraintlayout/core/widgets/b;->a(Landroidx/constraintlayout/core/widgets/d;Landroidx/constraintlayout/core/c;Ljava/util/ArrayList;I)V

    .line 67
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->p()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 70
    goto :goto_4a

    .line 71
    :catch_46
    move-exception v3

    .line 72
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :goto_4a
    new-instance v3, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iput-object v3, p0, Lw/j;->d:Ljava/util/ArrayList;

    .line 82
    :goto_51
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v3

    .line 86
    if-ge v1, v3, :cond_6a

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 94
    new-instance v4, Lw/j$a;

    .line 96
    invoke-direct {v4, v3, p1}, Lw/j$a;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/c;)V

    .line 99
    iget-object v3, p0, Lw/j;->d:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_51

    .line 107
    :cond_6a
    if-nez p2, :cond_7c

    .line 109
    iget-object p2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 111
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 114
    move-result p2

    .line 115
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 117
    invoke-static {v0}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->s()V

    .line 124
    goto :goto_8b

    .line 125
    :cond_7c
    iget-object p2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 127
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 130
    move-result p2

    .line 131
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 133
    invoke-static {v0}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 136
    move-result v0

    .line 137
    invoke-virtual {p1}, Landroidx/constraintlayout/core/c;->s()V

    .line 140
    :goto_8b
    sub-int/2addr v0, p2

    .line 141
    return v0
.end method

.method public final d(ILw/j;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_21

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 19
    invoke-virtual {p2, v1}, Lw/j;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 22
    if-nez p1, :cond_1c

    .line 24
    iget v2, p2, Lw/j;->b:I

    .line 26
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q0:I

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    iget v2, p2, Lw/j;->b:I

    .line 31
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r0:I

    .line 33
    goto :goto_6

    .line 34
    :cond_21
    iget p1, p2, Lw/j;->b:I

    .line 36
    iput p1, p0, Lw/j;->e:I

    .line 38
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lw/j;->c:I

    .line 8
    if-nez v1, :cond_c

    .line 10
    const-string v1, "Horizontal"

    .line 12
    goto :goto_1a

    .line 13
    :cond_c
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_12

    .line 16
    const-string v1, "Vertical"

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_18

    .line 22
    const-string v1, "Both"

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const-string v1, "Unknown"

    .line 27
    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, " ["

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lw/j;->b:I

    .line 37
    const-string v2, "] <"

    .line 39
    invoke-static {v0, v1, v2}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lw/j;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_4c

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 61
    const-string v3, " "

    .line 63
    invoke-static {v0, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 67
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_30

    .line 77
    :cond_4c
    const-string v1, " >"

    .line 79
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
