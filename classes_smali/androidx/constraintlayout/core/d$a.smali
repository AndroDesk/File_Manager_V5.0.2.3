.class public final Landroidx/constraintlayout/core/d$a;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/core/d;->j(Landroidx/constraintlayout/core/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/core/SolverVariable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    .line 3
    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    .line 5
    iget p1, p1, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 7
    iget p2, p2, Landroidx/constraintlayout/core/SolverVariable;->b:I

    .line 9
    sub-int/2addr p1, p2

    .line 10
    return p1
.end method
