.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    .line 7
    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$view:Landroid/view/View;

    .line 9
    const/high16 v0, 0x3f800000  # 1.0f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 14
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 16
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 18
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 21
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 23
    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 32
    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 35
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    .line 3
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 8
    return-void
.end method
