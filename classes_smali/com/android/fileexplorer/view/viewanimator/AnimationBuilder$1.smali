.class Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->custom(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;[F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

.field public final synthetic val$update:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;Landroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$update:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$view:Landroid/view/View;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$update:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$view:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result p1

    .line 15
    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;->update(Landroid/view/View;F)V

    .line 18
    return-void
.end method
