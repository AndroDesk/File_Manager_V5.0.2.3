.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$f;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I

.field public d:I

.field public final synthetic e:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 p1, 0x7fc00000  # Float.NaN

    .line 8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 10
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 15
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_9

    .line 6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 8
    if-eq v2, v1, :cond_29

    .line 10
    :cond_9
    if-ne v0, v1, :cond_13

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 14
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 16
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->j(I)V

    .line 19
    goto :goto_22

    .line 20
    :cond_13
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 22
    if-ne v2, v1, :cond_1d

    .line 24
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    invoke-virtual {v2, v0, v1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->g(II)V

    .line 35
    :goto_22
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 37
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 39
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 42
    :cond_29
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_42

    .line 50
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 52
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3a

    .line 58
    return-void

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 61
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 63
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 66
    return-void

    .line 67
    :cond_42
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 69
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 71
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 73
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f(FF)V

    .line 76
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 78
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 82
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 84
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    .line 86
    return-void
.end method
