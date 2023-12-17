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
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 5
    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    .line 7
    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$oldViewAnim:Landroid/view/ViewPropertyAnimator;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    .line 9
    const/high16 v0, 0x3f800000  # 1.0f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$view:Landroid/view/View;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 25
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 27
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 29
    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/u;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 35
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 37
    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 41
    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 48
    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 51
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;->val$changeInfo:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 5
    iget-object v0, v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/u;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 11
    return-void
.end method
