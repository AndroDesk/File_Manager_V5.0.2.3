.class public final Lf1/d0$a;
.super Lf1/o;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/d0;->onDisappear(Landroid/view/ViewGroup;Lf1/t;ILf1/t;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lf1/d0;


# direct methods
.method public constructor <init>(Lf1/d0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lf1/d0$a;->d:Lf1/d0;

    .line 3
    iput-object p2, p0, Lf1/d0$a;->a:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lf1/d0$a;->b:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lf1/d0$a;->c:Landroid/view/View;

    .line 9
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lf1/d0$a;->c:Landroid/view/View;

    .line 3
    sget v1, Lf1/k;->save_overlay_view:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lf1/d0$a;->a:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lf1/d0$a;->b:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 20
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 23
    return-void
.end method

.method public final onTransitionPause(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/d0$a;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lf1/d0$a;->b:Landroid/view/View;

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 12
    return-void
.end method

.method public final onTransitionResume(Lf1/n;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lf1/d0$a;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_14

    .line 9
    iget-object p1, p0, Lf1/d0$a;->a:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lf1/d0$a;->b:Landroid/view/View;

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    iget-object p1, p0, Lf1/d0$a;->d:Lf1/d0;

    .line 23
    invoke-virtual {p1}, Lf1/n;->cancel()V

    .line 26
    :goto_19
    return-void
.end method
