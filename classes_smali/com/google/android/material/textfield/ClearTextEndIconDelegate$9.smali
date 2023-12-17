.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getScaleAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

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
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 13
    iget-object v0, v0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$9;->this$0:Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 20
    iget-object v0, v0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 25
    return-void
.end method
