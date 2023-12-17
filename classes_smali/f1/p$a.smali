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
.method public constructor <init>(Landroid/view/ViewGroup;Lf1/n;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lf1/p$a;->a:Lf1/n;

    .line 6
    iput-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 8
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    sget-object v0, Lf1/p;->c:Ljava/util/ArrayList;

    .line 17
    iget-object v1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez v0, :cond_1a

    .line 26
    return v1

    .line 27
    :cond_1a
    invoke-static {}, Lf1/p;->b()Landroidx/collection/a;

    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v0, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/ArrayList;

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_34

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v4, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {v0, v4, v2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_3f

    .line 53
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v4

    .line 57
    if-lez v4, :cond_3f

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    :cond_3f
    :goto_3f
    iget-object v4, p0, Lf1/p$a;->a:Lf1/n;

    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lf1/p$a;->a:Lf1/n;

    .line 71
    new-instance v4, Lf1/p$a$a;

    .line 73
    invoke-direct {v4, p0, v0}, Lf1/p$a$a;-><init>(Lf1/p$a;Landroidx/collection/a;)V

    .line 76
    invoke-virtual {v2, v4}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 79
    iget-object v0, p0, Lf1/p$a;->a:Lf1/n;

    .line 81
    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v0, v2, v4}, Lf1/n;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 87
    if-eqz v3, :cond_6e

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v0

    .line 93
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_6e

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lf1/n;

    .line 105
    iget-object v3, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {v2, v3}, Lf1/n;->resume(Landroid/view/View;)V

    .line 110
    goto :goto_5c

    .line 111
    :cond_6e
    iget-object v0, p0, Lf1/p$a;->a:Lf1/n;

    .line 113
    iget-object v2, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v0, v2}, Lf1/n;->playTransition(Landroid/view/ViewGroup;)V

    .line 118
    return v1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object p1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    sget-object p1, Lf1/p;->c:Ljava/util/ArrayList;

    .line 17
    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lf1/p;->b()Landroidx/collection/a;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p1, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 34
    if-eqz p1, :cond_3f

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_3f

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3f

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lf1/n;

    .line 58
    iget-object v1, p0, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {v0, v1}, Lf1/n;->resume(Landroid/view/View;)V

    .line 63
    goto :goto_2d

    .line 64
    :cond_3f
    iget-object p1, p0, Lf1/p$a;->a:Lf1/n;

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lf1/n;->clearValues(Z)V

    .line 70
    return-void
.end method
