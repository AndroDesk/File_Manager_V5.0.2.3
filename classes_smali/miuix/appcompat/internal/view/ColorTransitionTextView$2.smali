.class Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorTransitionTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field public final synthetic val$toTransited:Z


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 3
    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    .line 3
    if-eqz p1, :cond_e

    .line 5
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 7
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    .line 17
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    :goto_17
    return-void
.end method
