.class Lcom/google/android/material/floatingactionbutton/AnimatorTracker;
.super Ljava/lang/Object;
.source "AnimatorTracker.java"


# instance fields
.field private currentAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelCurrent()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 4
    return-void
.end method

.method public onNextAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->cancelCurrent()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/AnimatorTracker;->currentAnimator:Landroid/animation/Animator;

    .line 6
    return-void
.end method
