.class Lcom/xiaomi/stat/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/e;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/e;->j(Lcom/xiaomi/stat/e;)I

    .line 6
    iget v0, p0, Lcom/xiaomi/stat/r;->b:I

    .line 8
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 21
    invoke-static {v2}, Lcom/xiaomi/stat/e;->k(Lcom/xiaomi/stat/e;)J

    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 28
    invoke-static {v2}, Lcom/xiaomi/stat/e;->l(Lcom/xiaomi/stat/e;)J

    .line 31
    move-result-wide v7

    .line 32
    iget-object v3, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    sub-long v5, v7, v0

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;Ljava/lang/String;JJ)V

    .line 47
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 49
    invoke-static {p1}, Lcom/xiaomi/stat/e;->i(Lcom/xiaomi/stat/e;)V

    .line 52
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/e;->h(Lcom/xiaomi/stat/e;)I

    .line 6
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/xiaomi/stat/r;->b:I

    .line 12
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p1, v0, v1}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;J)J

    .line 21
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 23
    invoke-static {p1}, Lcom/xiaomi/stat/e;->i(Lcom/xiaomi/stat/e;)V

    .line 26
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2a

    .line 9
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;J)J

    .line 18
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;I)I

    .line 24
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 26
    invoke-static {p1, v0}, Lcom/xiaomi/stat/e;->b(Lcom/xiaomi/stat/e;I)I

    .line 29
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 31
    invoke-static {p1}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lcom/xiaomi/stat/s;

    .line 37
    invoke-direct {v0, p0}, Lcom/xiaomi/stat/s;-><init>(Lcom/xiaomi/stat/r;)V

    .line 40
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    :cond_2a
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 45
    invoke-static {p1}, Lcom/xiaomi/stat/e;->g(Lcom/xiaomi/stat/e;)I

    .line 48
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/stat/e;->m(Lcom/xiaomi/stat/e;)I

    .line 6
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 8
    invoke-static {p1}, Lcom/xiaomi/stat/e;->e(Lcom/xiaomi/stat/e;)I

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_3b

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 20
    invoke-static {p1}, Lcom/xiaomi/stat/e;->n(Lcom/xiaomi/stat/e;)J

    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 28
    move-result-wide v7

    .line 29
    iget-object v2, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 31
    invoke-static {v2}, Lcom/xiaomi/stat/e;->o(Lcom/xiaomi/stat/e;)I

    .line 34
    move-result v3

    .line 35
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 37
    invoke-static {p1}, Lcom/xiaomi/stat/e;->p(Lcom/xiaomi/stat/e;)I

    .line 40
    move-result v4

    .line 41
    sub-long v5, v7, v0

    .line 43
    invoke-static/range {v2 .. v8}, Lcom/xiaomi/stat/e;->a(Lcom/xiaomi/stat/e;IIJJ)V

    .line 46
    iget-object p1, p0, Lcom/xiaomi/stat/r;->a:Lcom/xiaomi/stat/e;

    .line 48
    invoke-static {p1}, Lcom/xiaomi/stat/e;->f(Lcom/xiaomi/stat/e;)Ljava/util/concurrent/Executor;

    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/xiaomi/stat/t;

    .line 54
    invoke-direct {v0, p0}, Lcom/xiaomi/stat/t;-><init>(Lcom/xiaomi/stat/r;)V

    .line 57
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    :cond_3b
    return-void
.end method
