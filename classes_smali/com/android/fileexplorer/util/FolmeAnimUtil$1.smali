.class Lcom/android/fileexplorer/util/FolmeAnimUtil$1;
.super Ljava/lang/Object;
.source "FolmeAnimUtil.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/FolmeAnimUtil;->animScale(Landroid/view/View;IIIILmiuix/animation/listener/TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$endHeight:I

.field public final synthetic val$endWidth:I

.field public final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic val$startHeight:I

.field public final synthetic val$startWidth:I

.field public final synthetic val$target:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIIILandroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .registers 7

    iput p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startWidth:I

    iput p2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endWidth:I

    iput p3, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startHeight:I

    iput p4, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endHeight:I

    iput-object p5, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p6, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->access$000()Landroid/animation/FloatEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->access$000()Landroid/animation/FloatEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    float-to-int v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animScale width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FolmeAnimUtil"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$target:Landroid/view/View;

    iget-object v0, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
