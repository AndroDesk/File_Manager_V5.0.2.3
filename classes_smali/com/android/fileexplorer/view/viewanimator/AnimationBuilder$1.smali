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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    iput-object p2, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$update:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;

    iput-object p3, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$update:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;->update(Landroid/view/View;F)V

    return-void
.end method
