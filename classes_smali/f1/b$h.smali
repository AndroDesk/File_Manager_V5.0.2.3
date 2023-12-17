.class public final Lf1/b$h;
.super Lf1/o;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/b;->createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf1/b$h;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lf1/b$h;->a:Z

    .line 10
    return-void
.end method

.method public final onTransitionEnd(Lf1/n;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lf1/b$h;->a:Z

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-object v0, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 11
    :cond_a
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 14
    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 7
    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    .line 7
    return-void
.end method
