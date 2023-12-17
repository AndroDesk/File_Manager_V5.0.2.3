.class public final Lcom/google/android/material/transition/Hold;
.super Lf1/d0;
.source "Hold.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf1/d0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [F

    .line 4
    const/4 p2, 0x0

    .line 5
    const/4 p3, 0x0

    .line 6
    aput p3, p1, p2

    .line 8
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 5

    .line 1
    const/4 p1, 0x1

    .line 2
    new-array p1, p1, [F

    .line 4
    const/4 p2, 0x0

    .line 5
    const/4 p3, 0x0

    .line 6
    aput p3, p1, p2

    .line 8
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
