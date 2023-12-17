.class public Lcom/xiaomi/stat/c/g;
.super Landroid/os/Handler;


# static fields
.field private static final c:Ljava/lang/String; = "UploadTimer"

.field private static final d:I = 0x3a98

.field private static final e:I = 0x5

.field private static final f:I = 0x15180

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Landroid/content/BroadcastReceiver;

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const p1, 0x493e0

    .line 7
    iput p1, p0, Lcom/xiaomi/stat/c/g;->j:I

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const/16 p1, 0x3a98

    .line 19
    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 21
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 24
    move-result-wide v1

    .line 25
    iput-wide v1, p0, Lcom/xiaomi/stat/c/g;->l:J

    .line 27
    iput-boolean v0, p0, Lcom/xiaomi/stat/c/g;->m:Z

    .line 29
    new-instance p1, Lcom/xiaomi/stat/c/h;

    .line 31
    invoke-direct {p1, p0}, Lcom/xiaomi/stat/c/h;-><init>(Lcom/xiaomi/stat/c/g;)V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    .line 36
    const p1, 0xea60

    .line 39
    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 41
    int-to-long v1, p1

    .line 42
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/g;->a(Landroid/content/Context;)V

    .line 52
    const-string p1, " UploadTimer: "

    .line 54
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object p1

    .line 58
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    const-string v0, "UploadTimer"

    .line 69
    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private a(I)I
    .registers 3

    if-gez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    if-lez p1, :cond_a

    const/4 v0, 0x5

    if-ge p1, v0, :cond_a

    return v0

    :cond_a
    const v0, 0x15180

    if-le p1, v0, :cond_10

    return v0

    :cond_10
    return p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadTimer"

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method private f()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->m()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_d

    .line 11
    mul-int/lit16 v0, v0, 0x3e8

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-static {}, Lcom/xiaomi/stat/b;->j()I

    .line 17
    move-result v0

    .line 18
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1a

    .line 24
    mul-int/lit16 v0, v0, 0x3e8

    .line 26
    return v0

    .line 27
    :cond_1a
    const/16 v0, 0x3a98

    .line 29
    return v0
.end method

.method private g()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->e()V

    .line 11
    return-void
.end method

.method private h()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 10
    :cond_9
    return-void
.end method

.method private i()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmp-long v0, v0, v2

    .line 13
    if-gez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    if-lez v0, :cond_1b

    .line 18
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 21
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    goto :goto_21

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    :goto_21
    const-string v0, " checkDatabase mIsDatabaseEmpty="

    .line 36
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    const-string v1, "UploadTimer"

    .line 55
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_9

    .line 2
    iget-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    if-nez p1, :cond_9

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_9
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    return-void
.end method

.method public b()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->n:I

    if-ne v0, v1, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->f()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/c/g;->n:I

    .line 3
    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/stat/c/g;->l:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_20

    move v0, v1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_32

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stat/c/g;->l:J

    :cond_32
    const-string v0, " resetBackgroundInterval: "

    .line 8
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget v1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 7

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 14
    :cond_5
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_19

    .line 15
    iget-object v3, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " totalCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " deleteData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->j:I

    if-lt v0, v1, :cond_3e

    return-void

    :cond_3e
    if-eqz v2, :cond_42

    if-nez p1, :cond_46

    :cond_42
    add-int/lit16 v0, v0, 0x3a98

    .line 18
    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    :cond_46
    return-void
.end method

.method public c()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/c/g;->j:I

    .line 3
    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 5
    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 14
    return-void
.end method

.method public e()V
    .registers 12

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->n(Landroid/content/Context;)J

    .line 8
    move-result-wide v1

    .line 9
    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->m(Landroid/content/Context;)J

    .line 12
    move-result-wide v3

    .line 13
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 16
    move-result-wide v5

    .line 17
    const-wide/16 v7, -0x1

    .line 19
    cmp-long v5, v5, v7

    .line 21
    if-nez v5, :cond_19

    .line 23
    const-wide/16 v5, 0x0

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 29
    move-result-wide v5

    .line 30
    const-wide/16 v7, 0x400

    .line 32
    div-long/2addr v5, v7

    .line 33
    :goto_20
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 36
    move-result-wide v7

    .line 37
    sub-long v3, v5, v3

    .line 39
    const-wide/16 v9, 0x3e8

    .line 41
    mul-long/2addr v3, v9

    .line 42
    long-to-float v3, v3

    .line 43
    sub-long v1, v7, v1

    .line 45
    long-to-float v1, v1

    .line 46
    div-float/2addr v3, v1

    .line 47
    invoke-static {v0, v7, v8}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;J)V

    .line 50
    invoke-static {v0, v5, v6}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;J)V

    .line 53
    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;F)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_37

    .line 56
    :catchall_37
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_12

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->g()V

    .line 12
    iget p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    .line 14
    int-to-long v1, p1

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    goto :goto_1f

    .line 19
    :cond_12
    const/4 v0, 0x2

    .line 20
    if-ne p1, v0, :cond_19

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->i()V

    .line 25
    goto :goto_1f

    .line 26
    :cond_19
    const/4 v0, 0x3

    .line 27
    if-ne p1, v0, :cond_1f

    .line 29
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->h()V

    .line 32
    :cond_1f
    :goto_1f
    return-void
.end method
