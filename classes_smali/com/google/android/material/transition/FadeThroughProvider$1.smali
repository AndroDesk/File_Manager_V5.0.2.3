.class final Lcom/google/android/material/transition/FadeThroughProvider$1;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$endFraction:F

.field public final synthetic val$endValue:F

.field public final synthetic val$startFraction:F

.field public final synthetic val$startValue:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$view:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$startValue:F

    .line 5
    iput p3, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$endValue:F

    .line 7
    iput p4, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$startFraction:F

    .line 9
    iput p5, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$endFraction:F

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$view:Landroid/view/View;

    .line 13
    iget v1, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$startValue:F

    .line 15
    iget v2, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$endValue:F

    .line 17
    iget v3, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$startFraction:F

    .line 19
    iget v4, p0, Lcom/google/android/material/transition/FadeThroughProvider$1;->val$endFraction:F

    .line 21
    invoke-static {v1, v2, v3, v4, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 28
    return-void
.end method
