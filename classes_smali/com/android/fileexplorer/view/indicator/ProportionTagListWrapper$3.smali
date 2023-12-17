.class Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;
.super Ljava/lang/Object;
.source "ProportionTagListWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->hideTagByAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$3;->this$0:Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;->access$000(Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper;)Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/fileexplorer/view/indicator/ProportionTagListWrapper$OnAnimatorListener;->onProportionTagAnimatorUpdate()V

    :cond_11
    return-void
.end method
