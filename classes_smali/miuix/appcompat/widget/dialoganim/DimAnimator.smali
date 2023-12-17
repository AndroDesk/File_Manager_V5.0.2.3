.class public Lmiuix/appcompat/widget/dialoganim/DimAnimator;
.super Ljava/lang/Object;
.source "DimAnimator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_20

    .line 7
    const-string v1, "alpha"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 15
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 17
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    const-wide/16 v0, 0xfa

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_20
    .array-data 4
        0x3e99999a  # 0.3f
        0x0
    .end array-data
.end method

.method public static show(Landroid/view/View;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_20

    .line 7
    const-string v1, "alpha"

    .line 9
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 15
    const/high16 v1, 0x3fc00000  # 1.5f

    .line 17
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    const-wide/16 v0, 0x12c

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_20
    .array-data 4
        0x0
        0x3e99999a  # 0.3f
    .end array-data
.end method
