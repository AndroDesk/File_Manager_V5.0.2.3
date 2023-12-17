.class Lcom/google/android/material/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$dependency:Landroid/view/View;

.field public final synthetic val$expanded:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->this$0:Lcom/google/android/material/transformation/FabTransformationBehavior;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    .line 5
    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    .line 3
    if-nez p1, :cond_17

    .line 5
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    .line 13
    const/high16 v0, 0x3f800000  # 1.0f

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_17
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$expanded:Z

    .line 3
    if-eqz p1, :cond_16

    .line 5
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$child:Landroid/view/View;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 17
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->val$dependency:Landroid/view/View;

    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_16
    return-void
.end method
