.class public final Lw/i;
.super Ljava/lang/Object;
.source "RunGroup.java"


# instance fields
.field public a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v0, p0, Lw/i;->b:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lw/i;->a:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 16
    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 5
    if-eqz v1, :cond_7

    .line 7
    return-wide p1

    .line 8
    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p1

    .line 16
    :goto_f
    if-ge v2, v1, :cond_33

    .line 18
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lw/d;

    .line 26
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    if-eqz v6, :cond_30

    .line 30
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 34
    if-ne v6, v0, :cond_24

    .line 36
    goto :goto_30

    .line 37
    :cond_24
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p1

    .line 41
    invoke-static {v5, v6, v7}, Lw/i;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_f

    .line 52
    :cond_33
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    if-ne p0, v1, :cond_50

    .line 56
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 59
    move-result-wide v1

    .line 60
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    sub-long/2addr p1, v1

    .line 63
    invoke-static {p0, p1, p2}, Lw/i;->a(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 73
    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 75
    int-to-long v3, p0

    .line 76
    sub-long/2addr p1, v3

    .line 77
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_50
    return-wide v3
.end method

.method public static b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/b;

    .line 5
    if-eqz v1, :cond_7

    .line 7
    return-wide p1

    .line 8
    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move-wide v3, p1

    .line 16
    :goto_f
    if-ge v2, v1, :cond_33

    .line 18
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->k:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lw/d;

    .line 26
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    if-eqz v6, :cond_30

    .line 30
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 34
    if-ne v6, v0, :cond_24

    .line 36
    goto :goto_30

    .line 37
    :cond_24
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 39
    int-to-long v6, v6

    .line 40
    add-long/2addr v6, p1

    .line 41
    invoke-static {v5, v6, v7}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_f

    .line 52
    :cond_33
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    if-ne p0, v1, :cond_50

    .line 56
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->j()J

    .line 59
    move-result-wide v1

    .line 60
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    add-long/2addr p1, v1

    .line 63
    invoke-static {p0, p1, p2}, Lw/i;->b(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 70
    move-result-wide v1

    .line 71
    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 73
    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->f:I

    .line 75
    int-to-long v3, p0

    .line 76
    sub-long/2addr p1, v3

    .line 77
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v3

    .line 81
    :cond_50
    return-wide v3
.end method
