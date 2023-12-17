.class Lcom/android/fileexplorer/view/ToastTextView$4;
.super Ljava/lang/Object;
.source "ToastTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ToastTextView;->show(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ToastTextView;

.field public final synthetic val$autoDismiss:Z

.field public final synthetic val$dismissDelay:J


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/ToastTextView;ZJ)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$autoDismiss:Z

    .line 5
    iput-wide p3, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$dismissDelay:J

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$autoDismiss:Z

    .line 3
    if-eqz p1, :cond_b

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    .line 7
    iget-wide v0, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$dismissDelay:J

    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->access$000(Lcom/android/fileexplorer/view/ToastTextView;J)V

    .line 12
    :cond_b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
