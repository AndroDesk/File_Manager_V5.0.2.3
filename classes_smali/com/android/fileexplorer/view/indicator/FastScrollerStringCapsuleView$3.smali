.class Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;
.super Ljava/lang/Object;
.source "FastScrollerStringCapsuleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->hideCapsuleByAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView$3;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerStringCapsuleView;)Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;->onTimeCapsuleAnimatorUpdate()V

    .line 18
    :cond_11
    return-void
.end method
