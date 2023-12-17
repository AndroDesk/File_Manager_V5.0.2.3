.class Lcom/android/fileexplorer/view/CircleNumberView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircleNumberView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/CircleNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/CircleNumberView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/CircleNumberView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$1;->this$0:Lcom/android/fileexplorer/view/CircleNumberView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$1;->this$0:Lcom/android/fileexplorer/view/CircleNumberView;

    invoke-static {p1, p1}, Lcom/android/fileexplorer/view/CircleNumberView;->access$000(Lcom/android/fileexplorer/view/CircleNumberView;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$1;->this$0:Lcom/android/fileexplorer/view/CircleNumberView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView;->access$100(Lcom/android/fileexplorer/view/CircleNumberView;)Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$1;->this$0:Lcom/android/fileexplorer/view/CircleNumberView;

    invoke-static {p1}, Lcom/android/fileexplorer/view/CircleNumberView;->access$100(Lcom/android/fileexplorer/view/CircleNumberView;)Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$1;->this$0:Lcom/android/fileexplorer/view/CircleNumberView;

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/view/CircleNumberView$OnPercentAnimationEndListener;->onPercentAnimationEnd(Lcom/android/fileexplorer/view/CircleNumberView;)V

    :cond_18
    return-void
.end method
