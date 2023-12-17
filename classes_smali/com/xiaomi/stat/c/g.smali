.class public Lcom/xiaomi/stat/c/g;
.super Landroid/os/Handler;


# static fields
.field private static final c:Ljava/lang/String; = "UploadTimer"

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Landroid/content/BroadcastReceiver;

.field private j:I

.field private k:I

.field private l:J

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9170e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->d:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->e:I

    const v0, 0x87c16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->f:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->g:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->h:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/c/g;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const p1, 0x493e0

    iput p1, p0, Lcom/xiaomi/stat/c/g;->j:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/stat/c/g;->l:J

    iput-boolean v0, p0, Lcom/xiaomi/stat/c/g;->m:Z

    new-instance p1, Lcom/xiaomi/stat/c/h;

    invoke-direct {p1, p0}, Lcom/xiaomi/stat/c/h;-><init>(Lcom/xiaomi/stat/c/g;)V

    iput-object p1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    const p1, 0xea60

    iput p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/g;->a(Landroid/content/Context;)V

    const-string p1, " UploadTimer: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadTimer"

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p1

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

    invoke-static {}, Lcom/xiaomi/stat/b;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result v0

    if-lez v0, :cond_d

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_d
    invoke-static {}, Lcom/xiaomi/stat/b;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/g;->a(I)I

    move-result v0

    if-lez v0, :cond_1a

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_1a
    const/16 v0, 0x3a98

    return v0
.end method

.method private g()V
    .registers 2

    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/i;->c()V

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->e()V

    return-void
.end method

.method private h()V
    .registers 2

    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_9
    return-void
.end method

.method private i()V
    .registers 5

    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    return-void

    :cond_f
    if-lez v0, :cond_1b

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_21
    const-string v0, " checkDatabase mIsDatabaseEmpty="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/stat/c/g;->m:Z

    return-void
.end method

.method public b()V
    .registers 5

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->n:I

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->f()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/c/g;->n:I

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

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

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stat/c/g;->l:J

    :cond_32
    const-string v0, " resetBackgroundInterval: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/xiaomi/stat/c/g;->b()V

    :cond_5
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/a/c;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_19

    iget-object v3, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

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

    iget v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    iget v1, p0, Lcom/xiaomi/stat/c/g;->j:I

    if-lt v0, v1, :cond_3e

    return-void

    :cond_3e
    if-eqz v2, :cond_42

    if-nez p1, :cond_46

    :cond_42
    add-int/lit16 v0, v0, 0x3a98

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    :cond_46
    return-void
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lcom/xiaomi/stat/c/g;->j:I

    iput v0, p0, Lcom/xiaomi/stat/c/g;->k:I

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/stat/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e()V
    .registers 12

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->n(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/xiaomi/stat/d/p;->m(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_19

    const-wide/16 v5, 0x0

    goto :goto_20

    :cond_19
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    :goto_20
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v7

    sub-long v3, v5, v3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v3, v9

    long-to-float v3, v3

    sub-long v1, v7, v1

    long-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v0, v7, v8}, Lcom/xiaomi/stat/d/p;->e(Landroid/content/Context;J)V

    invoke-static {v0, v5, v6}, Lcom/xiaomi/stat/d/p;->d(Landroid/content/Context;J)V

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;F)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_37

    :catchall_37
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->g()V

    iget p1, p0, Lcom/xiaomi/stat/c/g;->k:I

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1f

    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->i()V

    goto :goto_1f

    :cond_19
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    invoke-direct {p0}, Lcom/xiaomi/stat/c/g;->h()V

    :cond_1f
    :goto_1f
    return-void
.end method
