.class public final Lm/g;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm0/o0;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Landroid/view/animation/Interpolator;

.field public d:Lm0/p0;

.field public e:Z

.field public final f:Lm/g$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lm/g;->b:J

    .line 8
    new-instance v0, Lm/g$a;

    .line 10
    invoke-direct {v0, p0}, Lm/g$a;-><init>(Lm/g;)V

    .line 13
    iput-object v0, p0, Lm/g;->f:Lm/g$a;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lm/g;->a:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lm/g;->e:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lm/g;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1b

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lm0/o0;

    .line 24
    invoke-virtual {v1}, Lm0/o0;->b()V

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lm/g;->e:Z

    .line 31
    return-void
.end method

.method public final b()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lm/g;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lm/g;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_52

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lm0/o0;

    .line 24
    iget-wide v2, p0, Lm/g;->b:J

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    cmp-long v4, v2, v4

    .line 30
    if-ltz v4, :cond_22

    .line 32
    invoke-virtual {v1, v2, v3}, Lm0/o0;->c(J)V

    .line 35
    :cond_22
    iget-object v2, p0, Lm/g;->c:Landroid/view/animation/Interpolator;

    .line 37
    if-eqz v2, :cond_37

    .line 39
    iget-object v3, v1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/view/View;

    .line 47
    if-eqz v3, :cond_37

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 56
    :cond_37
    iget-object v2, p0, Lm/g;->d:Lm0/p0;

    .line 58
    if-eqz v2, :cond_40

    .line 60
    iget-object v2, p0, Lm/g;->f:Lm/g$a;

    .line 62
    invoke-virtual {v1, v2}, Lm0/o0;->d(Lm0/p0;)V

    .line 65
    :cond_40
    iget-object v1, v1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/view/View;

    .line 73
    if-eqz v1, :cond_b

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 82
    goto :goto_b

    .line 83
    :cond_52
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lm/g;->e:Z

    .line 86
    return-void
.end method
