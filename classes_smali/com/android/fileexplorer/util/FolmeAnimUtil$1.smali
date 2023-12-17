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
.method public constructor <init>(IIIILandroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .registers 7

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startWidth:I

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endWidth:I

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startHeight:I

    .line 7
    iput p4, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endHeight:I

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    .line 11
    iput-object p6, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$target:Landroid/view/View;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->access$000()Landroid/animation/FloatEvaluator;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startWidth:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endWidth:I

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 34
    move-result v0

    .line 35
    invoke-static {}, Lcom/android/fileexplorer/util/FolmeAnimUtil;->access$000()Landroid/animation/FloatEvaluator;

    .line 38
    move-result-object v1

    .line 39
    iget v2, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$startHeight:I

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    iget v3, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$endHeight:I

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 58
    move-result p1

    .line 59
    iget-object v1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    .line 61
    float-to-int v2, v0

    .line 62
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    float-to-int v2, p1

    .line 65
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v2, "animScale width = "

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", height = "

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    const-string v0, "FolmeAnimUtil"

    .line 94
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$target:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/fileexplorer/util/FolmeAnimUtil$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method
