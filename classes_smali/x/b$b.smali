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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lx/b;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lx/b$b;->g:[F

    return-void
.end method


# virtual methods
.method public final b(Landroidx/constraintlayout/widget/ConstraintAttribute;)V
    .registers 2

    iput-object p1, p0, Lx/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    return-void
.end method

.method public final d(FLandroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lx/b$b;->g:[F

    invoke-virtual {p0, p1}, Lu/e;->a(F)F

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object p1, p0, Lx/b$b;->h:Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v0, p0, Lx/b$b;->g:[F

    invoke-static {p1, p2, v0}, Lx/a;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    return-void
.end method
