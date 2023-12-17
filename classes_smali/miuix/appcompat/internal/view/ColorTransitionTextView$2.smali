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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V
    .registers 3

    iput-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_17
    return-void
.end method
