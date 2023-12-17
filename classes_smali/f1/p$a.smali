.class public final Lf1/p$a;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lf1/n;

.field public b:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lf1/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf1/p$a;->a:Lf1/n;

    iput-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 6

    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Lf1/p;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    invoke-static {}, Lf1/p;->b()Landroidx/collection/a;

    move-result-object v0

    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3f
    :goto_3f
    iget-object v4, p0, Lf1/p$a;->a:Lf1/n;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lf1/p$a;->a:Lf1/n;

    new-instance v4, Lf1/p$a$a;

    invoke-direct {v4, p0, v0}, Lf1/p$a$a;-><init>(Lf1/p$a;Landroidx/collection/a;)V

    invoke-virtual {v2, v4}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    iget-object v0, p0, Lf1/p$a;->a:Lf1/n;

    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lf1/n;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_6e

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    iget-object v3, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lf1/n;->resume(Landroid/view/View;)V

    goto :goto_5c

    :cond_6e
    iget-object v0, p0, Lf1/p$a;->a:Lf1/n;

    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lf1/n;->playTransition(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, Lf1/p;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lf1/p;->b()Landroidx/collection/a;

    move-result-object p1

    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/n;

    iget-object v1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lf1/n;->resume(Landroid/view/View;)V

    goto :goto_2d

    :cond_3f
    iget-object p1, p0, Lf1/p$a;->a:Lf1/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lf1/n;->clearValues(Z)V

    return-void
.end method
