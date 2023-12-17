.class public Lcom/xiaomi/onetrack/api/an;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/an$c;,
        Lcom/xiaomi/onetrack/api/an$b;,
        Lcom/xiaomi/onetrack/api/an$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.miui.analytics"

.field public static final b:Ljava/lang/String; = "com.miui.analytics.onetrack.OneTrackService"

.field private static final c:Ljava/lang/String; = "ServiceConnectManager"

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private d:Lcom/miui/analytics/ITrack;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Landroid/content/Context;

.field private i:Lcom/xiaomi/onetrack/api/an$c;

.field private j:Landroid/content/ServiceConnection;

.field private k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaomi/onetrack/api/an$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;-><init>(Lcom/xiaomi/onetrack/api/an;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/xiaomi/onetrack/api/an$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/onetrack/api/an$c;-><init>(Lcom/xiaomi/onetrack/api/an;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->b()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/api/ServiceConnectionManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/an;Lcom/miui/analytics/ITrack;)Lcom/miui/analytics/ITrack;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/onetrack/api/an;
    .registers 1

    .line 3
    invoke-static {}, Lcom/xiaomi/onetrack/api/an$a;->a()Lcom/xiaomi/onetrack/api/an;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/an;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b()V
    .registers 4

    const-string v0, "ServiceConnectManager"

    const-string v1, "ensureService start..."

    .line 14
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-nez v1, :cond_17

    .line 16
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->c()V

    goto :goto_3c

    :cond_17
    const-string v1, "ensureService mConnecting: "

    .line 17
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAnalytics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-nez v2, :cond_31

    const/4 v2, 0x0

    goto :goto_32

    :cond_31
    const/4 v2, 0x1

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/api/an;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/api/an;)Lcom/miui/analytics/ITrack;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    return-object p0
.end method

.method private c()V
    .registers 7

    const-string v0, "ServiceConnectManager"

    const/4 v1, 0x0

    .line 2
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.miui.analytics"

    const-string v4, "com.miui.analytics.onetrack.OneTrackService"

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2c

    .line 6
    :cond_20
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService:  mConnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bindResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    goto :goto_77

    :catch_4b
    move-exception v2

    .line 9
    :try_start_4c
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_58} :catch_59

    goto :goto_6e

    :catch_59
    move-exception v1

    const-string v3, "bindService e1: "

    .line 11
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    const-string v1, "bindService e: "

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-static {v2, v1, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method public static synthetic d(Lcom/xiaomi/onetrack/api/an;)Landroid/content/ServiceConnection;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    if-eqz v0, :cond_26

    .line 3
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/an;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_26

    :catch_f
    move-exception v0

    const-string v1, "unBindService: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnectManager"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public static synthetic e(Lcom/xiaomi/onetrack/api/an;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/an;->f:Landroid/content/Context;

    return-object p0
.end method

.method private e()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/onetrack/api/an$b;

    .line 3
    invoke-interface {v1}, Lcom/xiaomi/onetrack/api/an$b;->a()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static synthetic f(Lcom/xiaomi/onetrack/api/an;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->d()V

    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/xiaomi/onetrack/api/an;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->b()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_c

    .line 14
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19

    .line 15
    :cond_c
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public a(Lcom/xiaomi/onetrack/api/an$b;)V
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 13
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)Z
    .registers 7

    .line 4
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 5
    :try_start_5
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_f

    .line 6
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_f
    iget-object p3, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_18} :catch_44

    const/4 v1, 0x1

    goto :goto_44

    :catch_1a
    move-exception p1

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/an;->d()V

    .line 9
    iget-object p2, p0, Lcom/xiaomi/onetrack/api/an;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "track error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ServiceConnectManager"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 11
    :cond_3e
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/an;->i:Lcom/xiaomi/onetrack/api/an$c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :catch_44
    :goto_44
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Z)V
    .registers 6

    .line 2
    :try_start_0
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_a

    .line 3
    invoke-virtual {p3}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_a
    iget-object p3, p0, Lcom/xiaomi/onetrack/api/an;->d:Lcom/miui/analytics/ITrack;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, v0, p4, p1, p2}, Lcom/miui/analytics/ITrack;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_20

    :catch_14
    move-exception p1

    const-string p2, "trackCacheData error:"

    .line 5
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ServiceConnectManager"

    .line 6
    invoke-static {p1, p2, p3}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_20
    return-void
.end method
