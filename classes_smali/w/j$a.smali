.class public final Lw/j$a;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/c;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v0}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 17
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 19
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 22
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->M:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 24
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 27
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->N:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 29
    invoke-static {p2}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 32
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->O:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 34
    invoke-static {p1}, Landroidx/constraintlayout/core/c;->n(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 37
    return-void
.end method
