.class public final Lt/a;
.super Ljava/lang/Object;
.source "Cache.java"


# instance fields
.field public a:Lt/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/c;"
        }
    .end annotation
.end field

.field public b:Lt/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/c;"
        }
    .end annotation
.end field

.field public c:[Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x100

    .line 6
    new-instance v1, Lt/c;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Lt/c;-><init>(II)V

    .line 12
    iput-object v1, p0, Lt/a;->a:Lt/c;

    .line 14
    new-instance v1, Lt/c;

    .line 16
    invoke-direct {v1, v0, v2}, Lt/c;-><init>(II)V

    .line 19
    iput-object v1, p0, Lt/a;->b:Lt/c;

    .line 21
    const/16 v0, 0x20

    .line 23
    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    .line 25
    iput-object v0, p0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    return-void
.end method
