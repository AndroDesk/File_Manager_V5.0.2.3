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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lf1/o;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf1/b$h;->a:Z

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Lf1/n;)V
    .registers 3

    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf1/b$h;->a:Z

    return-void
.end method

.method public final onTransitionEnd(Lf1/n;)V
    .registers 4

    iget-boolean v0, p0, Lf1/b$h;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    :cond_a
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 3

    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 3

    iget-object p1, p0, Lf1/b$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lf1/v;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
