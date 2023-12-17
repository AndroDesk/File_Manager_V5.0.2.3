.class Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;
.super Ljava/lang/Object;
.source "ViewAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->start()Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$400(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/animation/AnimatorSet;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$2;->this$0:Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;->access$500(Lcom/android/fileexplorer/view/viewanimator/ViewAnimator;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    return v0
.end method
