.class Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;
.super Ljava/lang/Object;
.source "ProportionTagListWrapper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->showTagByAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->mCanceled:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->mCanceled:Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$2;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;->onProportionTagAnimatorFadeInEnd()V

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
