.class public final Lf1/d0$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Lf1/n$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/view/ViewGroup;

.field public final d:Z

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/d0$b;->f:Z

    iput-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    iput p2, p0, Lf1/d0$b;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf1/d0$b;->d:Z

    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lf1/d0$b;->d:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lf1/d0$b;->e:Z

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iput-boolean p1, p0, Lf1/d0$b;->e:Z

    invoke-static {v0, p1}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    :cond_11
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf1/d0$b;->f:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    if-nez p1, :cond_14

    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    iget v0, p0, Lf1/d0$b;->b:I

    sget-object v1, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    iget-object p1, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_14
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    iget v0, p0, Lf1/d0$b;->b:I

    sget-object v1, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    :cond_d
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    sget-object v1, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    :cond_c
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onTransitionCancel(Lf1/n;)V
    .registers 2

    return-void
.end method

.method public final onTransitionEnd(Lf1/n;)V
    .registers 5

    iget-boolean v0, p0, Lf1/d0$b;->f:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lf1/d0$b;->a:Landroid/view/View;

    iget v1, p0, Lf1/d0$b;->b:I

    sget-object v2, Lf1/w;->a:Lf1/b0;

    invoke-virtual {v2, v1, v0}, Lf1/b0;->a0(ILandroid/view/View;)V

    iget-object v0, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf1/d0$b;->a(Z)V

    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 2

    return-void
.end method
