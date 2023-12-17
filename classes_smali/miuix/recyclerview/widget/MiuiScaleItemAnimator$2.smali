.class Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiScaleItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

.field public final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
