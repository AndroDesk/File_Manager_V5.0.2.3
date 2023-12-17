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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-instance v1, Lt/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lt/c;-><init>(II)V

    iput-object v1, p0, Lt/a;->a:Lt/c;

    new-instance v1, Lt/c;

    invoke-direct {v1, v0, v2}, Lt/c;-><init>(II)V

    iput-object v1, p0, Lt/a;->b:Lt/c;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Lt/a;->c:[Landroidx/constraintlayout/core/SolverVariable;

    return-void
.end method
