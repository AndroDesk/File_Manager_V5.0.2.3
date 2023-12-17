.class Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiScaleItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$b0;)V
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

.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .registers 5

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput-object p3, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$view:Landroid/view/View;

    iput-object p4, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object p1, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    invoke-virtual {p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
