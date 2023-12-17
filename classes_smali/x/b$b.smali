.class public final Lx/b$b;
.super Lx/b;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public g:[F

.field public h:Landroidx/constraintlayout/widget/ConstraintAttribute;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lx/b;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Lx/b$b;->g:[F

    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lx/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 3
    return-void
.end method

.method public final d(FLandroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx/b$b;->g:[F

    .line 3
    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    aput p1, v0, v1

    .line 10
    iget-object p1, p0, Lx/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 12
    iget-object v0, p0, Lx/b$b;->g:[F

    .line 14
    invoke-static {p1, p2, v0}, Lx/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    .line 17
    return-void
.end method
