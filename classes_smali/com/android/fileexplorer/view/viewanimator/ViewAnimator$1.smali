.class Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;
.super Ljava/lang/Object;
.source "ViewAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->createAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;->onStop()V

    .line 18
    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2c

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 28
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$302(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 38
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 45
    :cond_2c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;->onStart()V

    .line 18
    :cond_11
    return-void
.end method
