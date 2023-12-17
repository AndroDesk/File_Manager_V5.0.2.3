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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lf1/n;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf1/r;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/r;->d:Z

    iput v0, p0, Lf1/r;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lf1/n;)V
    .registers 6

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lf1/n;->mParent:Lf1/r;

    iget-wide v0, p0, Lf1/n;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    invoke-virtual {p1, v0, v1}, Lf1/n;->setDuration(J)Lf1/n;

    :cond_12
    iget v0, p0, Lf1/r;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    :cond_1f
    iget v0, p0, Lf1/r;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lf1/n;->getPropagation()Lf1/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf1/n;->setPropagation(Lf1/q;)V

    :cond_2c
    iget v0, p0, Lf1/r;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lf1/n;->getPathMotion()Lf1/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf1/n;->setPathMotion(Lf1/j;)V

    :cond_39
    iget v0, p0, Lf1/r;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lf1/n;->getEpicenterCallback()Lf1/n$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    :cond_46
    return-void
.end method

.method public final addListener(Lf1/n$g;)Lf1/n;
    .registers 2

    invoke-super {p0, p1}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(I)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(I)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(I)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Landroid/view/View;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Landroid/view/View;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/Class;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Ljava/lang/Class;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Ljava/lang/Class;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final addTarget(Ljava/lang/String;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->addTarget(Ljava/lang/String;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->addTarget(Ljava/lang/String;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final b(J)V
    .registers 7

    invoke-super {p0, p1, p2}, Lf1/n;->setDuration(J)Lf1/n;

    iget-wide v0, p0, Lf1/n;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_24

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1, p2}, Lf1/n;->setDuration(J)Lf1/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    return-void
.end method

.method public final c(Landroid/animation/TimeInterpolator;)Lf1/r;
    .registers 5

    iget v0, p0, Lf1/r;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf1/r;->e:I

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    invoke-super {p0, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final cancel()V
    .registers 4

    invoke-super {p0}, Lf1/n;->cancel()V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2}, Lf1/n;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final captureEndValues(Lf1/t;)V
    .registers 5

    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    iget-object v2, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Lf1/n;->captureEndValues(Lf1/t;)V

    iget-object v2, p1, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public final capturePropagationValues(Lf1/t;)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final captureStartValues(Lf1/t;)V
    .registers 5

    iget-object v0, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    iget-object v2, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Lf1/n;->captureStartValues(Lf1/t;)V

    iget-object v2, p1, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2b
    return-void
.end method

.method public final clone()Lf1/n;
    .registers 6

    invoke-super {p0}, Lf1/n;->clone()Lf1/n;

    move-result-object v0

    check-cast v0, Lf1/r;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf1/r;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2c

    iget-object v3, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n;

    invoke-virtual {v3}, Lf1/n;->clone()Lf1/n;

    move-result-object v3

    iget-object v4, v0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lf1/n;->mParent:Lf1/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2c
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

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

    move-object v0, p0

    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    move-result-wide v1

    iget-object v3, v0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_40

    iget-object v5, v0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lf1/n;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_33

    iget-boolean v5, v0, Lf1/r;->b:Z

    if-nez v5, :cond_23

    if-nez v4, :cond_33

    :cond_23
    invoke-virtual {v6}, Lf1/n;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_30

    add-long/2addr v9, v1

    invoke-virtual {v6, v9, v10}, Lf1/n;->setStartDelay(J)Lf1/n;

    goto :goto_33

    :cond_30
    invoke-virtual {v6, v1, v2}, Lf1/n;->setStartDelay(J)Lf1/n;

    :cond_33
    :goto_33
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lf1/n;->createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_40
    return-void
.end method

.method public final d(I)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf1/r;->b:Z

    goto :goto_17

    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-boolean v0, p0, Lf1/r;->b:Z

    :goto_17
    return-void
.end method

.method public final excludeTarget(IZ)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(IZ)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(IZ)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Landroid/view/View;Z)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Landroid/view/View;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

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

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/Class;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/Class;Z)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final excludeTarget(Ljava/lang/String;Z)Lf1/n;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/String;Z)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1, p2}, Lf1/n;->excludeTarget(Ljava/lang/String;Z)Lf1/n;

    move-result-object p1

    return-object p1
.end method

.method public final forceToEnd(Landroid/view/ViewGroup;)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->forceToEnd(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final pause(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->pause(Landroid/view/View;)V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final removeListener(Lf1/n$g;)Lf1/n;
    .registers 2

    invoke-super {p0, p1}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(I)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(I)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(I)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Landroid/view/View;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Landroid/view/View;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/Class;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Ljava/lang/Class;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Ljava/lang/Class;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final removeTarget(Ljava/lang/String;)Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->removeTarget(Ljava/lang/String;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-super {p0, p1}, Lf1/n;->removeTarget(Ljava/lang/String;)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final resume(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->resume(Landroid/view/View;)V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final runAnimators()V
    .registers 5

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lf1/n;->start()V

    invoke-virtual {p0}, Lf1/n;->end()V

    return-void

    :cond_f
    new-instance v0, Lf1/r$b;

    invoke-direct {v0, p0}, Lf1/r$b;-><init>(Lf1/r;)V

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, v0}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    goto :goto_1a

    :cond_2a
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lf1/r;->c:I

    iget-boolean v0, p0, Lf1/r;->b:Z

    if-nez v0, :cond_6b

    const/4 v0, 0x1

    :goto_37
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    new-instance v3, Lf1/r$a;

    invoke-direct {v3, v2}, Lf1/r$a;-><init>(Lf1/n;)V

    invoke-virtual {v1, v3}, Lf1/n;->addListener(Lf1/n$g;)Lf1/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_5c
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/n;

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Lf1/n;->runAnimators()V

    goto :goto_81

    :cond_6b
    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1}, Lf1/n;->runAnimators()V

    goto :goto_71

    :cond_81
    :goto_81
    return-void
.end method

.method public final setCanRemoveViews(Z)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->setCanRemoveViews(Z)V

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final bridge synthetic setDuration(J)Lf1/n;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lf1/r;->b(J)V

    return-object p0
.end method

.method public final setEpicenterCallback(Lf1/n$f;)V
    .registers 5

    invoke-super {p0, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    iget v0, p0, Lf1/r;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lf1/r;->e:I

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->setEpicenterCallback(Lf1/n$f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method public final bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;
    .registers 2

    invoke-virtual {p0, p1}, Lf1/r;->c(Landroid/animation/TimeInterpolator;)Lf1/r;

    move-result-object p1

    return-object p1
.end method

.method public final setPathMotion(Lf1/j;)V
    .registers 4

    invoke-super {p0, p1}, Lf1/n;->setPathMotion(Lf1/j;)V

    iget v0, p0, Lf1/r;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf1/r;->e:I

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    invoke-virtual {v1, p1}, Lf1/n;->setPathMotion(Lf1/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public final setPropagation(Lf1/q;)V
    .registers 5

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lf1/n;->setPropagation(Lf1/q;)V

    iget v0, p0, Lf1/r;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf1/r;->e:I

    iget-object v0, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_21

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    invoke-virtual {v2, p1}, Lf1/n;->setPropagation(Lf1/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method public final setStartDelay(J)Lf1/n;
    .registers 3

    invoke-super {p0, p1, p2}, Lf1/n;->setStartDelay(J)Lf1/n;

    move-result-object p1

    check-cast p1, Lf1/r;

    return-object p1
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    const-string v2, "\n"

    invoke-static {v0, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lf1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3a
    return-object v0
.end method
