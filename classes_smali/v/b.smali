.class public Lv/b;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "HelperWidget.java"

# interfaces
.implements Lv/a;


# instance fields
.field public s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public t0:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    iput-object v0, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lv/b;->t0:I

    .line 12
    return-void
.end method


# virtual methods
.method public final N(ILw/j;Ljava/util/ArrayList;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    iget v2, p0, Lv/b;->t0:I

    .line 5
    if-ge v1, v2, :cond_10

    .line 7
    iget-object v2, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    aget-object v2, v2, v1

    .line 11
    invoke-virtual {p2, v2}, Lw/j;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_2

    .line 17
    :cond_10
    :goto_10
    iget v1, p0, Lv/b;->t0:I

    .line 19
    if-ge v0, v1, :cond_1e

    .line 21
    iget-object v1, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    aget-object v1, v1, v0

    .line 25
    invoke-static {v1, p1, p3, p2}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_10

    .line 31
    :cond_1e
    return-void
.end method
