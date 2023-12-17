.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field public final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field public final synthetic val$translationYBottom:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->val$translationYBottom:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->previousAnimatedIntValue:I

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1400()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1e

    .line 17
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 19
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 21
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->previousAnimatedIntValue:I

    .line 23
    sub-int v1, p1, v1

    .line 25
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 30
    goto :goto_26

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 33
    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 35
    int-to-float v1, p1

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    :goto_26
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;->previousAnimatedIntValue:I

    .line 41
    return-void
.end method
