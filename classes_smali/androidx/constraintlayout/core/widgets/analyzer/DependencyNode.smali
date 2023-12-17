.class public Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
.super Ljava/lang/Object;
.source "DependencyNode.java"

# interfaces
.implements Lw/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public b:Z

.field public c:Z

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public j:Z

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 10
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 12
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 14
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 16
    const/4 v2, 0x1

    .line 17
    iput v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->h:I

    .line 19
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 21
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lw/d;)V
    .registers 7

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_17

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 19
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 21
    if-nez v0, :cond_6

    .line 23
    return-void

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 29
    if-eqz v0, :cond_21

    .line 31
    invoke-interface {v0, p0}, Lw/d;->a(Lw/d;)V

    .line 34
    :cond_21
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 36
    if-eqz v0, :cond_2b

    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 40
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->a(Lw/d;)V

    .line 43
    return-void

    .line 44
    :cond_2b
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 52
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_48

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 64
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 66
    if-eqz v4, :cond_44

    .line 68
    goto :goto_33

    .line 69
    :cond_44
    add-int/lit8 v1, v1, 0x1

    .line 71
    move-object v0, v3

    .line 72
    goto :goto_33

    .line 73
    :cond_48
    if-eqz v0, :cond_69

    .line 75
    if-ne v1, p1, :cond_69

    .line 77
    iget-boolean p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 79
    if-eqz p1, :cond_69

    .line 81
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    .line 83
    if-eqz p1, :cond_61

    .line 85
    iget-boolean v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 87
    if-eqz v1, :cond_60

    .line 89
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->h:I

    .line 91
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 93
    mul-int/2addr v1, p1

    .line 94
    iput v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 96
    goto :goto_61

    .line 97
    :cond_60
    return-void

    .line 98
    :cond_61
    :goto_61
    iget p1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 100
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 102
    add-int/2addr p1, v0

    .line 103
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 106
    :cond_69
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 108
    if-eqz p1, :cond_70

    .line 110
    invoke-interface {p1, p0}, Lw/d;->a(Lw/d;)V

    .line 113
    :cond_70
    return-void
.end method

.method public final b(Lw/d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {p1, p1}, Lw/d;->a(Lw/d;)V

    .line 13
    :cond_c
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->c:Z

    .line 18
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->b:Z

    .line 20
    return-void
.end method

.method public d(I)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 9
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 11
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_20

    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lw/d;

    .line 29
    invoke-interface {v0, v0}, Lw/d;->a(Lw/d;)V

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 8
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 10
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ":"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, "("

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 32
    if-eqz v1, :cond_28

    .line 34
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->g:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    const-string v1, "unresolved"

    .line 43
    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ") <t="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->l:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ":d="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ">"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
