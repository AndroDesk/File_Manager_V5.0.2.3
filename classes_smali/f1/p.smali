.class public final Lf1/p;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/p$a;
    }
.end annotation


# static fields
.field public static a:Lf1/a;

.field public static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/collection/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lf1/n;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lf1/a;

    .line 3
    invoke-direct {v0}, Lf1/a;-><init>()V

    .line 6
    sput-object v0, Lf1/p;->a:Lf1/a;

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 13
    sput-object v0, Lf1/p;->b:Ljava/lang/ThreadLocal;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    sput-object v0, Lf1/p;->c:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lf1/n;)V
    .registers 5

    .line 1
    sget-object v0, Lf1/p;->c:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6a

    .line 9
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p0}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_6a

    .line 17
    sget-object v0, Lf1/p;->c:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    if-nez p1, :cond_19

    .line 24
    sget-object p1, Lf1/p;->a:Lf1/a;

    .line 26
    :cond_19
    invoke-virtual {p1}, Lf1/n;->clone()Lf1/n;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lf1/p;->b()Landroidx/collection/a;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    if-eqz v0, :cond_43

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_43

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_43

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lf1/n;

    .line 64
    invoke-virtual {v1, p0}, Lf1/n;->pause(Landroid/view/View;)V

    .line 67
    goto :goto_33

    .line 68
    :cond_43
    if-eqz p1, :cond_49

    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, p0, v0}, Lf1/n;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 74
    :cond_49
    sget v0, Lf1/k;->transition_current_scene:I

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lf1/l;

    .line 82
    const/4 v2, 0x0

    .line 83
    if-nez v1, :cond_69

    .line 85
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_6a

    .line 90
    new-instance v0, Lf1/p$a;

    .line 92
    invoke-direct {v0, p0, p1}, Lf1/p$a;-><init>(Landroid/view/ViewGroup;Lf1/n;)V

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    throw v2

    .line 107
    :cond_6a
    :goto_6a
    return-void
.end method

.method public static b()Landroidx/collection/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lf1/n;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf1/p;->b:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 9
    if-eqz v0, :cond_13

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/collection/a;

    .line 17
    if-eqz v0, :cond_13

    .line 19
    return-object v0

    .line 20
    :cond_13
    new-instance v0, Landroidx/collection/a;

    .line 22
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 25
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    sget-object v2, Lf1/p;->b:Ljava/lang/ThreadLocal;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method
