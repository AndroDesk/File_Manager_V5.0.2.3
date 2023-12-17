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
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf1/d0$b;->f:Z

    .line 7
    iput-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    .line 9
    iput p2, p0, Lf1/d0$b;->b:I

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    iput-object p1, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lf1/d0$b;->d:Z

    .line 22
    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lf1/d0$b;->d:Z

    .line 3
    if-eqz v0, :cond_11

    .line 5
    iget-boolean v0, p0, Lf1/d0$b;->e:Z

    .line 7
    if-eq v0, p1, :cond_11

    .line 9
    iget-object v0, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    .line 11
    if-eqz v0, :cond_11

    .line 13
    iput-boolean p1, p0, Lf1/d0$b;->e:Z

    .line 15
    invoke-static {v0, p1}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 18
    :cond_11
    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lf1/d0$b;->f:Z

    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    .line 3
    if-nez p1, :cond_14

    .line 5
    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    .line 7
    iget v0, p0, Lf1/d0$b;->b:I

    .line 9
    sget-object v1, Lf1/w;->a:Lf1/b0;

    .line 11
    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    .line 14
    iget-object p1, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    .line 16
    if-eqz p1, :cond_14

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    .line 25
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    .line 3
    if-nez p1, :cond_d

    .line 5
    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    .line 7
    iget v0, p0, Lf1/d0$b;->b:I

    .line 9
    sget-object v1, Lf1/w;->a:Lf1/b0;

    .line 11
    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    .line 14
    :cond_d
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lf1/d0$b;->f:Z

    .line 3
    if-nez p1, :cond_c

    .line 5
    iget-object p1, p0, Lf1/d0$b;->a:Landroid/view/View;

    .line 7
    const/4 v0, 0x0

    .line 8
    sget-object v1, Lf1/w;->a:Lf1/b0;

    .line 10
    invoke-virtual {v1, v0, p1}, Lf1/b0;->a0(ILandroid/view/View;)V

    .line 13
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

    .line 1
    iget-boolean v0, p0, Lf1/d0$b;->f:Z

    .line 3
    if-nez v0, :cond_14

    .line 5
    iget-object v0, p0, Lf1/d0$b;->a:Landroid/view/View;

    .line 7
    iget v1, p0, Lf1/d0$b;->b:I

    .line 9
    sget-object v2, Lf1/w;->a:Lf1/b0;

    .line 11
    invoke-virtual {v2, v1, v0}, Lf1/b0;->a0(ILandroid/view/View;)V

    .line 14
    iget-object v0, p0, Lf1/d0$b;->c:Landroid/view/ViewGroup;

    .line 16
    if-eqz v0, :cond_14

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lf1/d0$b;->a(Z)V

    .line 25
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 28
    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    .line 5
    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lf1/d0$b;->a(Z)V

    .line 5
    return-void
.end method

.method public final onTransitionStart(Lf1/n;)V
    .registers 2

    return-void
.end method
