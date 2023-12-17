.class public final Lm0/n0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# instance fields
.field public final synthetic a:Lm0/p0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lm0/p0;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lm0/n0;->a:Lm0/p0;

    .line 3
    iput-object p2, p0, Lm0/n0;->b:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    .line 3
    iget-object v0, p0, Lm0/n0;->b:Landroid/view/View;

    .line 5
    invoke-interface {p1, v0}, Lm0/p0;->a(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    .line 3
    invoke-interface {p1}, Lm0/p0;->onAnimationEnd()V

    .line 6
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    .line 3
    invoke-interface {p1}, Lm0/p0;->b()V

    .line 6
    return-void
.end method
