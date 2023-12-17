.class Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;
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

.field public final synthetic val$window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->val$window:Landroid/view/Window;

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->val$window:Landroid/view/Window;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$000(Landroid/view/Window;)V

    .line 6
    return-void
.end method
