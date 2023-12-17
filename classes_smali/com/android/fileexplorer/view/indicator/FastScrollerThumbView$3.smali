.class Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;
.super Ljava/lang/Object;
.source "FastScrollerThumbView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->hideScrollerBarAnimator(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->mCanceled:Z

    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->mCanceled:Z

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->mCanceled:Z

    .line 3
    if-eqz p1, :cond_8

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->mCanceled:Z

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_19

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;->onAnimatorFadeOutEnd()V

    .line 26
    :cond_19
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
