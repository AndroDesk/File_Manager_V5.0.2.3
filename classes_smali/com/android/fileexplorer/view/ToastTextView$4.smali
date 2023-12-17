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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ToastTextView;ZJ)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$autoDismiss:Z

    iput-wide p3, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$dismissDelay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$autoDismiss:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->this$0:Lcom/android/fileexplorer/view/ToastTextView;

    iget-wide v0, p0, Lcom/android/fileexplorer/view/ToastTextView$4;->val$dismissDelay:J

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/view/ToastTextView;->access$000(Lcom/android/fileexplorer/view/ToastTextView;J)V

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
