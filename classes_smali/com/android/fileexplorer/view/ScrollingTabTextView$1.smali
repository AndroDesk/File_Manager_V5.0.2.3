.class Lcom/android/fileexplorer/view/ScrollingTabTextView$1;
.super Ljava/lang/Object;
.source "ScrollingTabTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollingTabTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView$1;->this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView$1;->this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/view/ScrollingTabTextView;->access$002(Lcom/android/fileexplorer/view/ScrollingTabTextView;I)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView$1;->this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
