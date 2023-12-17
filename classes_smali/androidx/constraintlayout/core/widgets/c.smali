.class public final Landroidx/constraintlayout/core/widgets/c;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field public a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public c:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public d:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public e:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public f:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public g:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/c;->k:F

    .line 7
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/c;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 9
    iput p2, p0, Landroidx/constraintlayout/core/widgets/c;->l:I

    .line 11
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/c;->m:Z

    .line 13
    return-void
.end method
