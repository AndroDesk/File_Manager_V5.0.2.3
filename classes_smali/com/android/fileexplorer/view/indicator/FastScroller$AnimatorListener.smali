.class Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/indicator/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_8

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    .line 8
    return-void

    .line 9
    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/animation/ValueAnimator;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Float;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x0

    .line 26
    cmpl-float p1, p1, v1

    .line 28
    if-nez p1, :cond_28

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 32
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 37
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$400(Lcom/android/fileexplorer/view/indicator/FastScroller;I)V

    .line 40
    goto :goto_33

    .line 41
    :cond_28
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 43
    const/4 v0, 0x2

    .line 44
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    .line 49
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    .line 52
    :goto_33
    return-void
.end method
