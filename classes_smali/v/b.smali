.class public Lv/b;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "HelperWidget.java"

# interfaces
.implements Lv/a;


# instance fields
.field public s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public t0:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v0, 0x0

    iput v0, p0, Lv/b;->t0:I

    return-void
.end method


# virtual methods
.method public final N(ILw/j;Ljava/util/ArrayList;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lv/b;->t0:I

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Lw/j;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    :goto_10
    iget v1, p0, Lv/b;->t0:I

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lv/b;->s0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    invoke-static {v1, p1, p3, p2}, Lw/g;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Lw/j;)Lw/j;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    return-void
.end method
