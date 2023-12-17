.class public Lf1/r;
.super Lf1/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/r$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/n;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lf1/n;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lf1/r;->b:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lf1/r;->d:Z

    .line 17
    iput v0, p0, Lf1/r;->e:I

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lf1/n;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object p0, p1, Lf1/n;->mParent:Lf1/r;

    .line 8
    iget-wide v0, p0, Lf1/n;->mDuration:J

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    cmp-long v2, v0, v2

    .line 14
    if-ltz v2, :cond_12

    .line 16
    invoke-virtual {p1, v0, v1}, Lf1/n;->setDuration(J)Lf1/n;

    .line 19
    :cond_12
    iget v0, p0, Lf1/r;->e:I

    .line 21
    and-int/lit8 v0, v0, 0x1

    .line 23
    if-eqz v0, :cond_1f

    .line 25
    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    .line 32
    :cond_1f
    iget v0, p0, Lf1/r;->e:I

    .line 34
    and-int/lit8 v0, v0, 0x2

    .line 36
    if-eqz v0, :cond_2c

    .line 38
    invoke-virtual {p0}, Lf1/n;->getPropagation()Lf1/q;

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lf1/n;->setPropagation(Lf1/q;)V

    .line 45
    :cond_2c
    iget v0, p0, Lf1/r;->e:I

    .line 47
    and-int/lit8 v0, v0, 0x4

    .line 49
    if-eqz v0, :cond_39

    .line 51
    invoke-virtual {p0}, Lf1/n;->getPathMotion()Lf1/j;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lf1/n;->setPathMotion(Lf1/j;)V

    .line 58
    :cond_39
    iget v0, p0, Lf1/r;->e:I

    .line 60
    and-int/lit8 v0, v0, 0x8

    .line 62
    if-eqz v0, :cond_46

    .line 64
    invoke-virtual {p0}, Lf1/n;->getEpicenterCallback()Lf1/n$f;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    .line 71
    :cond_46
    return-void
.end method

.method public final addListener(Lf1/n$g;)Lf1/n;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lf1/r;

    .line 7
    return-object p1
.end method

.method public final addTarget(I)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(I)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(I)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Landroid/view/View;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/Class;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 11
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Ljava/lang/Class;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Ljava/lang/Class;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/String;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 8
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Ljava/lang/String;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Ljava/lang/String;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final b(J)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Lf1/n;->setDuration(J)Lf1/n;

    .line 4
    iget-wide v0, p0, Lf1/n;->mDuration:J

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v0, v0, v2

    .line 10
    if-ltz v0, :cond_24

    .line 12
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 14
    if-eqz v0, :cond_24

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_14
    if-ge v1, v0, :cond_24

    .line 23
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lf1/n;

    .line 31
    invoke-virtual {v2, p1, p2}, Lf1/n;->setDuration(J)Lf1/n;

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_14

    .line 37
    :cond_24
    return-void
.end method

.method public final c(Landroid/animation/TimeInterpolator;)Lf1/r;
    .registers 5

    .line 1
    iget v0, p0, Lf1/r;->e:I

    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lf1/r;->e:I

    .line 7
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 18
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lf1/n;

    .line 26
    invoke-virtual {v2, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    invoke-super {p0, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lf1/r;

    .line 38
    return-object p1
.end method

.method public final cancel()V
    .registers 4

    .line 1
    invoke-super {p0}, Lf1/n;->cancel()V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2}, Lf1/n;->cancel()V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final captureEndValues(Lf1/t;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2b

    .line 9
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2b

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lf1/n;

    .line 27
    iget-object v2, p1, Lf1/t;->b:Landroid/view/View;

    .line 29
    invoke-virtual {v1, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_e

    .line 35
    invoke-virtual {v1, p1}, Lf1/n;->captureEndValues(Lf1/t;)V

    .line 38
    iget-object v2, p1, Lf1/t;->c:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_e

    .line 44
    :cond_2b
    return-void
.end method

.method public final capturePropagationValues(Lf1/t;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2, p1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final captureStartValues(Lf1/t;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2b

    .line 9
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2b

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lf1/n;

    .line 27
    iget-object v2, p1, Lf1/t;->b:Landroid/view/View;

    .line 29
    invoke-virtual {v1, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_e

    .line 35
    invoke-virtual {v1, p1}, Lf1/n;->captureStartValues(Lf1/t;)V

    .line 38
    iget-object v2, p1, Lf1/t;->c:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_e

    .line 44
    :cond_2b
    return-void
.end method

.method public final clone()Lf1/n;
    .registers 6

    .line 2
    invoke-super {p0}, Lf1/n;->clone()Lf1/n;

    move-result-object v0

    check-cast v0, Lf1/r;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2c

    .line 5
    iget-object v3, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n;

    invoke-virtual {v3}, Lf1/n;->clone()Lf1/n;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iput-object v0, v3, Lf1/n;->mParent:Lf1/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2c
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lf1/r;->clone()Lf1/n;

    move-result-object v0

    return-object v0
.end method

.method public final createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lf1/u;",
            "Lf1/u;",
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    .line 5
    move-result-wide v1

    .line 6
    iget-object v3, v0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_c
    if-ge v4, v3, :cond_40

    .line 15
    iget-object v5, v0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    move-object v6, v5

    .line 22
    check-cast v6, Lf1/n;

    .line 24
    const-wide/16 v7, 0x0

    .line 26
    cmp-long v5, v1, v7

    .line 28
    if-lez v5, :cond_33

    .line 30
    iget-boolean v5, v0, Lf1/r;->b:Z

    .line 32
    if-nez v5, :cond_23

    .line 34
    if-nez v4, :cond_33

    .line 36
    :cond_23
    invoke-virtual {v6}, Lf1/n;->getStartDelay()J

    .line 39
    move-result-wide v9

    .line 40
    cmp-long v5, v9, v7

    .line 42
    if-lez v5, :cond_30

    .line 44
    add-long/2addr v9, v1

    .line 45
    invoke-virtual {v6, v9, v10}, Lf1/n;->setStartDelay(J)Lf1/n;

    .line 48
    goto :goto_33

    .line 49
    :cond_30
    invoke-virtual {v6, v1, v2}, Lf1/n;->setStartDelay(J)Lf1/n;

    .line 52
    :cond_33
    :goto_33
    move-object v7, p1

    .line 53
    move-object v8, p2

    .line 54
    move-object v9, p3

    .line 55
    move-object/from16 v10, p4

    .line 57
    move-object/from16 v11, p5

    .line 59
    invoke-virtual/range {v6 .. v11}, Lf1/n;->createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_c

    .line 65
    :cond_40
    return-void
.end method

.method public final d(I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_15

    .line 4
    if-ne p1, v0, :cond_9

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf1/r;->b:Z

    .line 9
    goto :goto_17

    .line 10
    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 12
    const-string v1, "Invalid parameter for TransitionSet ordering: "

    .line 14
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 22
    :cond_15
    iput-boolean v0, p0, Lf1/r;->b:Z

    .line 24
    :goto_17
    return-void
.end method

.method public final excludeTarget(IZ)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 8
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(IZ)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(IZ)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Landroid/view/View;Z)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Landroid/view/View;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(Landroid/view/View;Z)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Ljava/lang/Class;Z)Lf1/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lf1/n;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 11
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/Class;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/Class;Z)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Ljava/lang/String;Z)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/String;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/String;Z)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final forceToEnd(Landroid/view/ViewGroup;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2, p1}, Lf1/n;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final pause(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->pause(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2, p1}, Lf1/n;->pause(Landroid/view/View;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final removeListener(Lf1/n$g;)Lf1/n;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lf1/r;

    .line 7
    return-object p1
.end method

.method public final removeTarget(I)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(I)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(I)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Landroid/view/View;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 4
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 5
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/Class;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 7
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 8
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Ljava/lang/Class;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Ljava/lang/Class;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/String;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 10
    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 11
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Ljava/lang/String;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Ljava/lang/String;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final resume(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->resume(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2, p1}, Lf1/n;->resume(Landroid/view/View;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final runAnimators()V
    .registers 5

    .line 1
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    invoke-virtual {p0}, Lf1/n;->start()V

    .line 12
    invoke-virtual {p0}, Lf1/n;->end()V

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Lf1/r$b;

    .line 18
    invoke-direct {v0, p0}, Lf1/r$b;-><init>(Lf1/r;)V

    .line 21
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2a

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lf1/n;

    .line 39
    invoke-virtual {v2, v0}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 42
    goto :goto_1a

    .line 43
    :cond_2a
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lf1/r;->c:I

    .line 51
    iget-boolean v0, p0, Lf1/r;->b:Z

    .line 53
    if-nez v0, :cond_6b

    .line 55
    const/4 v0, 0x1

    .line 56
    :goto_37
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result v1

    .line 62
    if-ge v0, v1, :cond_5c

    .line 64
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 66
    add-int/lit8 v2, v0, -0x1

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lf1/n;

    .line 74
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lf1/n;

    .line 82
    new-instance v3, Lf1/r$a;

    .line 84
    invoke-direct {v3, v2}, Lf1/r$a;-><init>(Lf1/n;)V

    .line 87
    invoke-virtual {v1, v3}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_37

    .line 93
    :cond_5c
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lf1/n;

    .line 102
    if-eqz v0, :cond_81

    .line 104
    invoke-virtual {v0}, Lf1/n;->runAnimators()V

    .line 107
    goto :goto_81

    .line 108
    :cond_6b
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v0

    .line 114
    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_81

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lf1/n;

    .line 126
    invoke-virtual {v1}, Lf1/n;->runAnimators()V

    .line 129
    goto :goto_71

    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public final setCanRemoveViews(Z)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->setCanRemoveViews(Z)V

    .line 4
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lf1/n;

    .line 21
    invoke-virtual {v2, p1}, Lf1/n;->setCanRemoveViews(Z)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public final bridge synthetic setDuration(J)Lf1/n;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lf1/r;->b(J)V

    .line 4
    return-object p0
.end method

.method public final setEpicenterCallback(Lf1/n$f;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    .line 4
    iget v0, p0, Lf1/r;->e:I

    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 8
    iput v0, p0, Lf1/r;->e:I

    .line 10
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_10
    if-ge v1, v0, :cond_20

    .line 19
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lf1/n;

    .line 27
    invoke-virtual {v2, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    return-void
.end method

.method public final bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lf1/r;->c(Landroid/animation/TimeInterpolator;)Lf1/r;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setPathMotion(Lf1/j;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lf1/n;->setPathMotion(Lf1/j;)V

    .line 4
    iget v0, p0, Lf1/r;->e:I

    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 8
    iput v0, p0, Lf1/r;->e:I

    .line 10
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 12
    if-eqz v0, :cond_24

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_e
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_24

    .line 23
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lf1/n;

    .line 31
    invoke-virtual {v1, p1}, Lf1/n;->setPathMotion(Lf1/j;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_e

    .line 37
    :cond_24
    return-void
.end method

.method public final setPropagation(Lf1/q;)V
    .registers 5

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Lf1/n;->setPropagation(Lf1/q;)V

    .line 5
    iget v0, p0, Lf1/r;->e:I

    .line 7
    or-int/lit8 v0, v0, 0x2

    .line 9
    iput v0, p0, Lf1/r;->e:I

    .line 11
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_11
    if-ge v1, v0, :cond_21

    .line 20
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lf1/n;

    .line 28
    invoke-virtual {v2, p1}, Lf1/n;->setPropagation(Lf1/q;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    return-void
.end method

.method public final setStartDelay(J)Lf1/n;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lf1/n;->setStartDelay(J)Lf1/n;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lf1/r;

    .line 7
    return-object p1
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_3a

    .line 14
    const-string v2, "\n"

    .line 16
    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lf1/n;

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "  "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_5

    .line 59
    :cond_3a
    return-object v0
.end method
