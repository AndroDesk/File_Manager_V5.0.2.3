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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/i0;-><init>()V

    .line 4
    return-void
.end method

.method public static s(Lf1/n;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lf1/n;->getTargetIds()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_21

    .line 11
    invoke-virtual {p0}, Lf1/n;->getTargetNames()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_21

    .line 21
    invoke-virtual {p0}, Lf1/n;->getTargetTypes()Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 35
    :goto_22
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lf1/n;

    .line 3
    invoke-virtual {p2, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    .line 6
    return-void
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p2, Lf1/n;

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    instance-of v0, p2, Lf1/r;

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2f

    .line 11
    check-cast p2, Lf1/r;

    .line 13
    iget-object v0, p2, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    :goto_12
    if-ge v1, v0, :cond_51

    .line 21
    if-ltz v1, :cond_28

    .line 23
    iget-object v2, p2, Lf1/r;->a:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v2

    .line 29
    if-lt v1, v2, :cond_1f

    .line 31
    goto :goto_28

    .line 32
    :cond_1f
    iget-object v2, p2, Lf1/r;->a:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lf1/n;

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    :goto_28
    const/4 v2, 0x0

    .line 42
    :goto_29
    invoke-virtual {p0, p1, v2}, Lf1/f;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_12

    .line 48
    :cond_2f
    invoke-static {p2}, Lf1/f;->s(Lf1/n;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_51

    .line 54
    invoke-virtual {p2}, Lf1/n;->getTargets()Ljava/util/List;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroidx/fragment/app/i0;->h(Ljava/util/List;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_51

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v0

    .line 68
    :goto_43
    if-ge v1, v0, :cond_51

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Landroid/view/View;

    .line 76
    invoke-virtual {p2, v2}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_43

    .line 82
    :cond_51
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lf1/n;

    .line 3
    invoke-static {p1, p2}, Lf1/p;->a(Landroid/view/ViewGroup;Lf1/n;)V

    .line 6
    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of p1, p1, Lf1/n;

    .line 3
    return p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    check-cast p1, Lf1/n;

    .line 5
    invoke-virtual {p1}, Lf1/n;->clone()Lf1/n;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    :goto_a
    return-object p1
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    check-cast p2, Lf1/n;

    .line 5
    check-cast p3, Lf1/n;

    .line 7
    if-eqz p1, :cond_1b

    .line 9
    if-eqz p2, :cond_1b

    .line 11
    new-instance v0, Lf1/r;

    .line 13
    invoke-direct {v0}, Lf1/r;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    .line 19
    invoke-virtual {v0, p2}, Lf1/r;->a(Lf1/n;)V

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {v0, p1}, Lf1/r;->d(I)V

    .line 26
    move-object p1, v0

    .line 27
    goto :goto_23

    .line 28
    :cond_1b
    if-eqz p1, :cond_1e

    .line 30
    goto :goto_23

    .line 31
    :cond_1e
    if-eqz p2, :cond_22

    .line 33
    move-object p1, p2

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    if-eqz p3, :cond_33

    .line 38
    new-instance p2, Lf1/r;

    .line 40
    invoke-direct {p2}, Lf1/r;-><init>()V

    .line 43
    if-eqz p1, :cond_2f

    .line 45
    invoke-virtual {p2, p1}, Lf1/r;->a(Lf1/n;)V

    .line 48
    :cond_2f
    invoke-virtual {p2, p3}, Lf1/r;->a(Lf1/n;)V

    .line 51
    return-object p2

    .line 52
    :cond_33
    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lf1/r;

    .line 3
    invoke-direct {v0}, Lf1/r;-><init>()V

    .line 6
    if-eqz p1, :cond_c

    .line 8
    check-cast p1, Lf1/n;

    .line 10
    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    .line 13
    :cond_c
    check-cast p2, Lf1/n;

    .line 15
    invoke-virtual {v0, p2}, Lf1/r;->a(Lf1/n;)V

    .line 18
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

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    new-instance v0, Lf1/f$a;

    .line 5
    invoke-direct {v0, p2, p3}, Lf1/f$a;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 8
    invoke-virtual {p1, v0}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 11
    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 13

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    new-instance v6, Lf1/g;

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lf1/g;-><init>(Lf1/f;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 14
    invoke-virtual {p1, v6}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 17
    return-void
.end method

.method public final m(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_14

    .line 3
    check-cast p2, Lf1/n;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-static {p1, v0}, Landroidx/fragment/app/i0;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 13
    new-instance p1, Lf1/e;

    .line 15
    invoke-direct {p1, v0}, Lf1/e;-><init>(Landroid/graphics/Rect;)V

    .line 18
    invoke-virtual {p2, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    .line 21
    :cond_14
    return-void
.end method

.method public final n(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 4

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    new-instance v0, Lf1/f$b;

    .line 5
    invoke-direct {v0, p2}, Lf1/f$b;-><init>(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p1, v0}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    .line 11
    return-void
.end method

.method public final o(Ljava/lang/Object;Li0/d;Landroidx/fragment/app/k;)V
    .registers 5

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    new-instance v0, Lf1/h;

    .line 5
    invoke-direct {v0, p1}, Lf1/h;-><init>(Lf1/n;)V

    .line 8
    invoke-virtual {p2, v0}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    .line 11
    new-instance p2, Lf1/i;

    .line 13
    invoke-direct {p2, p3}, Lf1/i;-><init>(Landroidx/fragment/app/k;)V

    .line 16
    invoke-virtual {p1, p2}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 19
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

    .line 1
    check-cast p1, Lf1/r;

    .line 3
    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_1c

    .line 17
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/view/View;

    .line 23
    invoke-static {v3, v0}, Landroidx/fragment/app/i0;->d(Landroid/view/View;Ljava/util/List;)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_e

    .line 29
    :cond_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p0, p3, p1}, Lf1/f;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 38
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

    .line 1
    check-cast p1, Lf1/r;

    .line 3
    if-eqz p1, :cond_15

    .line 5
    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 22
    :cond_15
    return-void
.end method

.method public final r(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    new-instance v0, Lf1/r;

    .line 7
    invoke-direct {v0}, Lf1/r;-><init>()V

    .line 10
    check-cast p1, Lf1/n;

    .line 12
    invoke-virtual {v0, p1}, Lf1/r;->a(Lf1/n;)V

    .line 15
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

    .line 1
    check-cast p1, Lf1/n;

    .line 3
    instance-of v0, p1, Lf1/r;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2c

    .line 8
    check-cast p1, Lf1/r;

    .line 10
    iget-object v0, p1, Lf1/r;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    :goto_f
    if-ge v1, v0, :cond_6e

    .line 18
    if-ltz v1, :cond_25

    .line 20
    iget-object v2, p1, Lf1/r;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v2

    .line 26
    if-lt v1, v2, :cond_1c

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object v2, p1, Lf1/r;->a:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lf1/n;

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 39
    :goto_26
    invoke-virtual {p0, v2, p2, p3}, Lf1/f;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_f

    .line 45
    :cond_2c
    invoke-static {p1}, Lf1/f;->s(Lf1/n;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_6e

    .line 51
    invoke-virtual {p1}, Lf1/n;->getTargets()Ljava/util/List;

    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    move-result v2

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result v3

    .line 63
    if-ne v2, v3, :cond_6e

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6e

    .line 71
    if-nez p3, :cond_4a

    .line 73
    move v0, v1

    .line 74
    goto :goto_4e

    .line 75
    :cond_4a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 78
    move-result v0

    .line 79
    :goto_4e
    if-ge v1, v0, :cond_5c

    .line 81
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/view/View;

    .line 87
    invoke-virtual {p1, v2}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_4e

    .line 93
    :cond_5c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result p3

    .line 97
    :goto_60
    add-int/lit8 p3, p3, -0x1

    .line 99
    if-ltz p3, :cond_6e

    .line 101
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/view/View;

    .line 107
    invoke-virtual {p1, v0}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    .line 110
    goto :goto_60

    .line 111
    :cond_6e
    return-void
.end method
