.class Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;
.super Ljava/lang/Object;
.source "ProportionTagListWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->showTagByAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$1;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;->onProportionTagAnimatorUpdate()V

    .line 18
    :cond_11
    return-void
.end method
