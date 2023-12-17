.class public final Lm0/n0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompat.java"


# instance fields
.field public final synthetic a:Lm0/p0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm0/p0;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lm0/n0;->a:Lm0/p0;

    iput-object p2, p0, Lm0/n0;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    iget-object v0, p0, Lm0/n0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lm0/p0;->a(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    invoke-interface {p1}, Lm0/p0;->onAnimationEnd()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lm0/n0;->a:Lm0/p0;

    invoke-interface {p1}, Lm0/p0;->b()V

    return-void
.end method
