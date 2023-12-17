.class public Lf1/f;
.super Landroidx/fragment/app/i0;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/i0;-><init>()V

    return-void
.end method

.method public static s(Lf1/n;)Z
    .registers 2

    invoke-virtual {p0}, Lf1/n;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lf1/n;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lf1/n;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lf1/n;

    invoke-virtual {p2, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lf1/n;

    if-nez p2, :cond_5

    return-void

    :cond_5
    instance-of v0, p2, Lf1/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    check-cast p2, Lf1/r;

    iget-object v0, p2, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    if-ge v1, v0, :cond_51

    if-ltz v1, :cond_28

    iget-object v2, p2, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1f

    goto :goto_28

    :cond_1f
    iget-object v2, p2, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v2, 0x0

    :goto_29
    invoke-virtual {p0, p1, v2}, Lf1/f;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    invoke-static {p2}, Lf1/f;->s(Lf1/n;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p2}, Lf1/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_43
    if-ge v1, v0, :cond_51

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_51
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lf1/n;

    invoke-static {p1, p2}, Lf1/p;->a(Landroid/view/ViewGroup;Lf1/n;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lf1/n;

    return p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p1, :cond_9

    check-cast p1, Lf1/n;

    invoke-virtual {p1}, Lf1/n;->clone()Lf1/n;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lf1/n;

    check-cast p2, Lf1/n;

    check-cast p3, Lf1/n;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    new-instance v0, Lf1/r;

    invoke-direct {v0}, Lf1/r;-><init>()V

    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    invoke-virtual {v0, p2}, Lf1/r;->a(Lf1/n;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lf1/r;->d(I)V

    move-object p1, v0

    goto :goto_23

    :cond_1b
    if-eqz p1, :cond_1e

    goto :goto_23

    :cond_1e
    if-eqz p2, :cond_22

    move-object p1, p2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-eqz p3, :cond_33

    new-instance p2, Lf1/r;

    invoke-direct {p2}, Lf1/r;-><init>()V

    if-eqz p1, :cond_2f

    invoke-virtual {p2, p1}, Lf1/r;->a(Lf1/n;)V

    :cond_2f
    invoke-virtual {p2, p3}, Lf1/r;->a(Lf1/n;)V

    return-object p2

    :cond_33
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lf1/r;

    invoke-direct {v0}, Lf1/r;-><init>()V

    if-eqz p1, :cond_c

    check-cast p1, Lf1/n;

    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    :cond_c
    check-cast p2, Lf1/n;

    invoke-virtual {v0, p2}, Lf1/r;->a(Lf1/n;)V

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lf1/n;

    new-instance v0, Lf1/f$a;

    invoke-direct {v0, p2, p3}, Lf1/f$a;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 13

    check-cast p1, Lf1/n;

    new-instance v6, Lf1/g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lf1/g;-><init>(Lf1/f;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final m(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_14

    check-cast p2, Lf1/n;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Landroidx/fragment/app/i0;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p1, Lf1/e;

    invoke-direct {p1, v0}, Lf1/e;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    :cond_14
    return-void
.end method

.method public final n(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    check-cast p1, Lf1/n;

    new-instance v0, Lf1/f$b;

    invoke-direct {v0, p2}, Lf1/f$b;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    return-void
.end method

.method public final o(Ljava/lang/Object;Li0/d;Landroidx/fragment/app/k;)V
    .registers 5

    check-cast p1, Lf1/n;

    new-instance v0, Lf1/h;

    invoke-direct {v0, p1}, Lf1/h;-><init>(Lf1/n;)V

    invoke-virtual {p2, v0}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    new-instance p2, Lf1/i;

    invoke-direct {p2, p3}, Lf1/i;-><init>(Landroidx/fragment/app/k;)V

    invoke-virtual {p1, p2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    return-void
.end method

.method public final p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lf1/r;

    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1c

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v0}, Landroidx/fragment/app/i0;->d(Landroid/view/View;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3, p1}, Lf1/f;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lf1/r;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_15
    return-void
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v0, Lf1/r;

    invoke-direct {v0}, Lf1/r;-><init>()V

    check-cast p1, Lf1/n;

    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    return-object v0
.end method

.method public final t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lf1/n;

    instance-of v0, p1, Lf1/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    check-cast p1, Lf1/r;

    iget-object v0, p1, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_f
    if-ge v1, v0, :cond_6e

    if-ltz v1, :cond_25

    iget-object v2, p1, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1c

    goto :goto_25

    :cond_1c
    iget-object v2, p1, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v2, 0x0

    :goto_26
    invoke-virtual {p0, v2, p2, p3}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2c
    invoke-static {p1}, Lf1/f;->s(Lf1/n;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_6e

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6e

    if-nez p3, :cond_4a

    move v0, v1

    goto :goto_4e

    :cond_4a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4e
    if-ge v1, v0, :cond_5c

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_5c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_60
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_6e

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    goto :goto_60

    :cond_6e
    return-void
.end method
