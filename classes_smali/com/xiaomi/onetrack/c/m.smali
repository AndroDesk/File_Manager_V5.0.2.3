.class public Lcom/xiaomi/onetrack/c/m;
.super Landroid/os/Handler;


# static fields
.field private static final a:Ljava/lang/String; = "UploadTimer"

.field private static final b:I = 0x1388

.field private static final c:I = 0x3a98

.field private static final d:I = 0x124f80


# instance fields
.field private final e:I

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const/16 p1, 0x3e8

    .line 6
    iput p1, p0, Lcom/xiaomi/onetrack/c/m;->e:I

    .line 8
    const/16 p1, 0x2710

    .line 10
    iput p1, p0, Lcom/xiaomi/onetrack/c/m;->f:I

    .line 12
    const v0, 0x124f80

    .line 15
    iput v0, p0, Lcom/xiaomi/onetrack/c/m;->g:I

    .line 17
    iput p1, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance p1, Lcom/xiaomi/onetrack/c/n;

    .line 29
    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/c/n;-><init>(Lcom/xiaomi/onetrack/c/m;)V

    .line 32
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/m;->j:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/c/m;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/c/m;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/c/m;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(IJ)V
    .registers 6

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "will post msg, prio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UploadTimer"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 9
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/m;->j:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_2b

    :catch_14
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerNetReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadTimer"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method private b()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/q;->a(I)Z

    .line 9
    move-result v0

    .line 10
    const-string v2, "UploadTimer"

    .line 12
    if-nez v0, :cond_37

    .line 14
    const/16 v0, 0x3e8

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget v3, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 21
    mul-int/2addr v3, v1

    .line 22
    iput v3, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 24
    const v1, 0x124f80

    .line 27
    if-le v3, v1, :cond_1e

    .line 29
    iput v1, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 31
    :cond_1e
    const-string v1, "will restart retry msg after "

    .line 33
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object v1

    .line 37
    iget v3, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v1, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 51
    int-to-long v1, v1

    .line 52
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    goto :goto_40

    .line 56
    :cond_37
    const/16 v0, 0x2710

    .line 58
    iput v0, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 60
    const-string v0, "retry success"

    .line 62
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_40
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 16
    new-instance v0, Lcom/xiaomi/onetrack/c/p;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/c/p;-><init>(Lcom/xiaomi/onetrack/c/m;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(IZ)V
    .registers 7

    const/16 v0, 0x3e8

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v1, "UploadTimer"

    if-eqz v0, :cond_1f

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "in retry mode, return, prio="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    if-eqz p2, :cond_24

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_53

    if-eqz p2, :cond_2f

    const-wide/16 v2, 0x0

    goto :goto_34

    .line 6
    :cond_2f
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/n;->a(I)I

    move-result p2

    int-to-long v2, p2

    .line 7
    :goto_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "will check prio="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", delay="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/onetrack/c/m;->a(IJ)V

    :cond_53
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    .line 7
    move-result v0

    .line 8
    const-string v1, "UploadTimer"

    .line 10
    if-eqz v0, :cond_70

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_70

    .line 18
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->b()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_70

    .line 25
    :cond_18
    iget p1, p1, Landroid/os/Message;->what:I

    .line 27
    const/16 v0, 0x3e8

    .line 29
    if-ne p1, v0, :cond_22

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/onetrack/c/m;->b()V

    .line 34
    return-void

    .line 35
    :cond_22
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p1}, Lcom/xiaomi/onetrack/c/q;->a(I)Z

    .line 42
    move-result v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v4, "handleCheckUpload ret="

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    const-string v4, ", prio="

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-nez v2, :cond_6f

    .line 73
    const-string p1, "handleCheckUpload failed, will check if need to send retry msg"

    .line 75
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_6f

    .line 84
    iget p1, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 86
    int-to-long v2, p1

    .line 87
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v0, "fire retry timer after "

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v0, p0, Lcom/xiaomi/onetrack/c/m;->h:I

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_6f
    return-void

    .line 113
    :cond_70
    :goto_70
    const-string p1, "不用处理消息, available="

    .line 115
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->a()Z

    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, ", 是否有网="

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->c()Z

    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, ", 数据库是否为空="

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {}, Lcom/xiaomi/onetrack/b/n;->b()Z

    .line 146
    move-result v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
