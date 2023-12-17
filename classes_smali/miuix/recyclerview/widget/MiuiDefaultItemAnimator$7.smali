.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateChangeImpl(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

.field public final synthetic val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/u;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/u;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    return-void
.end method
