.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field public final synthetic val$event:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->val$event:I

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->val$event:I

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    .line 8
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1300(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0xb4

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/android/material/snackbar/ContentViewCallback;->animateContentOut(II)V

    .line 13
    return-void
.end method
