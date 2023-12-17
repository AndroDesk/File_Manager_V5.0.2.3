.class Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;
.super Ljava/lang/Object;
.source "FastScrollerThumbView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->retractArrowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$5;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;->access$000(Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView;)Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerThumbView$OnAnimatorListener;->onAnimatorUpdate()V

    :cond_11
    return-void
.end method
