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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$100(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Stop;->onStop()V

    :cond_11
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$302(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$200(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    :cond_2c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    invoke-static {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$000(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Start;->onStart()V

    :cond_11
    return-void
.end method
