.class Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Lcom/google/android/material/transition/TransitionUtils$CanvasOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;->this$0:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;->this$0:Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->access$900(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 10
    return-void
.end method
