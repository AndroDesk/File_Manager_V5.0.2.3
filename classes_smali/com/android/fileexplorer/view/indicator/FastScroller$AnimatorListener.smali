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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScroller;Lcom/android/fileexplorer/view/indicator/FastScroller$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;-><init>(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$200(Lcom/android/fileexplorer/view/indicator/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$400(Lcom/android/fileexplorer/view/indicator/FastScroller;I)V

    goto :goto_33

    :cond_28
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$302(Lcom/android/fileexplorer/view/indicator/FastScroller;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScroller$AnimatorListener;->this$0:Lcom/android/fileexplorer/view/indicator/FastScroller;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScroller;->access$500(Lcom/android/fileexplorer/view/indicator/FastScroller;)V

    :goto_33
    return-void
.end method
