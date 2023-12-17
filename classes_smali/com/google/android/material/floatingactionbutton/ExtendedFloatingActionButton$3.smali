.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(Lcom/google/android/material/floatingactionbutton/MotionStrategy;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field public final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final synthetic val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

.field public final synthetic val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/MotionStrategy;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 5
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 7
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 6
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationCancel()V

    .line 9
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationEnd()V

    .line 6
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 8
    if-nez p1, :cond_10

    .line 10
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 12
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 14
    invoke-interface {p1, v0}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 17
    :cond_10
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;->cancelled:Z

    .line 9
    return-void
.end method
