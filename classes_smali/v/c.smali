.class public Lv/c;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "WidgetContainer.java"


# instance fields
.field public s0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 9
    return-void
.end method

.method public final C(Lt/a;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C(Lt/a;)V

    .line 4
    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C(Lt/a;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public N()V
    .registers 5

    .line 1
    iget-object v0, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_20

    .line 13
    iget-object v2, p0, Lv/c;->s0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    instance-of v3, v2, Lv/c;

    .line 23
    if-eqz v3, :cond_1d

    .line 25
    check-cast v2, Lv/c;

    .line 27
    invoke-virtual {v2}, Lv/c;->N()V

    .line 30
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_a

    .line 33
    :cond_20
    return-void
.end method
