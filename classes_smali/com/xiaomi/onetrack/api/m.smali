.class Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/api/h;

.field private b:I

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 9
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
    .registers 6

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    .line 3
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    if-ne v0, v1, :cond_10

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    const-wide/16 v0, 0x0

    .line 19
    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 29
    invoke-static {v3, v2, v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V

    .line 32
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 34
    if-eqz v0, :cond_39

    .line 36
    const-string v0, "onActivityPaused:"

    .line 38
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    const-string v0, "OneTrackImp"

    .line 55
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_39
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 3
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Z)V

    .line 8
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->c:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/xiaomi/onetrack/api/m;->d:J

    .line 20
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    iget-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 32
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Z)V

    .line 35
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 37
    if-eqz v0, :cond_46

    .line 39
    const-string v0, "onActivityResumed:"

    .line 41
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string p1, " isAppStart:"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const-string v0, "OneTrackImp"

    .line 68
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_46
    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 74
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 76
    invoke-static {p1}, Lcom/xiaomi/onetrack/api/h;->g(Lcom/xiaomi/onetrack/api/h;)V

    .line 79
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_17

    .line 7
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 9
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Lcom/xiaomi/onetrack/api/e;->a(I)V

    .line 16
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 18
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 20
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a()V

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 26
    :goto_19
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 28
    add-int/2addr v0, v2

    .line 29
    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 31
    const-string v0, "onActivityStarted: "

    .line 33
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    const-string v0, "OneTrackImp"

    .line 50
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/xiaomi/onetrack/api/m;->b:I

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1d

    .line 10
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 12
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    .line 15
    move-result-object v0

    .line 16
    const/4 v3, 0x2

    .line 17
    invoke-interface {v0, v3}, Lcom/xiaomi/onetrack/api/e;->a(I)V

    .line 20
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 22
    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->h(Lcom/xiaomi/onetrack/api/h;)V

    .line 25
    iput-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 27
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->e:Z

    .line 29
    goto :goto_1f

    .line 30
    :cond_1d
    iput-boolean v2, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 32
    :goto_1f
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->a:Lcom/xiaomi/onetrack/api/h;

    .line 34
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/m;->f:Z

    .line 36
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v1, "onActivityStopped: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const-string v0, "OneTrackImp"

    .line 62
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
