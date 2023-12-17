.class public final Landroidx/recyclerview/widget/c$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/c;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/ViewPropertyAnimator;

.field public final synthetic f:Landroidx/recyclerview/widget/c;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/RecyclerView$b0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .registers 7

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;

    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    iput p3, p0, Landroidx/recyclerview/widget/c$f;->b:I

    .line 7
    iput-object p4, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;

    .line 9
    iput p5, p0, Landroidx/recyclerview/widget/c$f;->d:I

    .line 11
    iput-object p6, p0, Landroidx/recyclerview/widget/c$f;->e:Landroid/view/ViewPropertyAnimator;

    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->b:I

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    :cond_a
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->d:I

    .line 13
    if-eqz p1, :cond_13

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->c:Landroid/view/View;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    :cond_13
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->e:Landroid/view/ViewPropertyAnimator;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;

    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/c;->mMoveAnimations:Ljava/util/ArrayList;

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/c;->dispatchFinishedWhenDone()V

    .line 28
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->f:Landroidx/recyclerview/widget/c;

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 8
    return-void
.end method
