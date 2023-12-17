.class Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;
.super Lcom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1b

    .line 7
    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/View;

    .line 17
    if-eqz p1, :cond_1b

    .line 19
    const/high16 v0, 0x3f800000  # 1.0f

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 33
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Landroid/app/Activity;

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 39
    return-void
.end method
