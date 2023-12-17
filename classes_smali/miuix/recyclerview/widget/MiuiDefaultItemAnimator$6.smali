.class Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$deltaX:I

.field public final synthetic val$deltaY:I

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .registers 7

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    iget p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_13

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
