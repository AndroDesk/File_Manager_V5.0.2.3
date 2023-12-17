.class public final Lcom/miui/maml/NotifierManager;
.super Ljava/lang/Object;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$DarkModeNotifier;,
        Lcom/miui/maml/NotifierManager$ContentChangeNotifier;,
        Lcom/miui/maml/NotifierManager$MobileDataNotifier;,
        Lcom/miui/maml/NotifierManager$BroadcastNotifier;,
        Lcom/miui/maml/NotifierManager$BaseNotifier;,
        Lcom/miui/maml/NotifierManager$OnNotifyListener;
    }
.end annotation


# static fields
.field private static DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "NotifierManager"

.field public static TYPE_DARK_MODE:Ljava/lang/String; = "DarkMode"

.field public static TYPE_MOBILE_DATA:Ljava/lang/String; = "MobileData"

.field public static TYPE_TIME_CHANGED:Ljava/lang/String; = "TimeChanged"

.field public static TYPE_WIFI_STATE:Ljava/lang/String; = "WifiState"

.field private static sInstance:Lcom/miui/maml/NotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/NotifierManager$BaseNotifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static synthetic access$100()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/NotifierManager;->DBG:Z

    .line 3
    return v0
.end method

.method private static createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .registers 5

    .line 1
    sget-boolean v0, Lcom/miui/maml/NotifierManager;->DBG:Z

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "createNotifier:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "NotifierManager"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1a
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_28

    .line 35
    new-instance p0, Lcom/miui/maml/NotifierManager$MobileDataNotifier;

    .line 37
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$MobileDataNotifier;-><init>(Landroid/content/Context;)V

    .line 40
    return-object p0

    .line 41
    :cond_28
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_40

    .line 49
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    .line 51
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 53
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 55
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 57
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 64
    return-object p0

    .line 65
    :cond_40
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_56

    .line 73
    new-instance p0, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;

    .line 75
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 77
    const-string v1, "android.intent.action.TIME_SET"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/NotifierManager$MultiBroadcastNotifier;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 86
    return-object p0

    .line 87
    :cond_56
    sget-object v0, Lcom/miui/maml/NotifierManager;->TYPE_DARK_MODE:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_64

    .line 95
    new-instance p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    .line 97
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;-><init>(Landroid/content/Context;)V

    .line 100
    return-object p0

    .line 101
    :cond_64
    new-instance v0, Lcom/miui/maml/NotifierManager$BroadcastNotifier;

    .line 103
    invoke-direct {v0, p1, p0}, Lcom/miui/maml/NotifierManager$BroadcastNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;
    .registers 3

    .line 1
    const-class v0, Lcom/miui/maml/NotifierManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/miui/maml/NotifierManager;

    .line 10
    invoke-direct {v1, p0}, Lcom/miui/maml/NotifierManager;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;

    .line 15
    :cond_e
    sget-object p0, Lcom/miui/maml/NotifierManager;->sInstance:Lcom/miui/maml/NotifierManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_12
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method private safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .line 16
    throw p1
.end method


# virtual methods
.method public acquireNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/miui/maml/NotifierManager;->DBG:Z

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    const-string v0, "NotifierManager"

    .line 7
    const-string v1, "acquireNotifier:"

    .line 9
    const-string v2, "  "

    .line 11
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_1f
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 40
    if-nez v1, :cond_3b

    .line 42
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1, v1}, Lcom/miui/maml/NotifierManager;->createNotifier(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_33

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :cond_33
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->init()V

    .line 55
    iget-object v2, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 57
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_40

    .line 61
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->addListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 64
    return-void

    .line 65
    :catchall_40
    move-exception p1

    .line 66
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    .line 67
    throw p1
.end method

.method public pause(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pauseListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_10

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->pause()V

    .line 17
    :cond_10
    return-void
.end method

.method public releaseNotifier(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/miui/maml/NotifierManager;->DBG:Z

    .line 3
    if-eqz v0, :cond_1c

    .line 5
    const-string v0, "NotifierManager"

    .line 7
    const-string v1, "releaseNotifier:"

    .line 9
    const-string v2, "  "

    .line 11
    invoke-static {v1, p1, v2}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_1f
    iget-object v1, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 40
    if-nez v1, :cond_2b

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :cond_2b
    invoke-virtual {v1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->removeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)V

    .line 47
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->getRef()I

    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3c

    .line 53
    invoke-virtual {v1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->finish()V

    .line 56
    iget-object p2, p0, Lcom/miui/maml/NotifierManager;->mNotifiers:Ljava/util/HashMap;

    .line 58
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3c
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    .line 65
    throw p1
.end method

.method public declared-synchronized resume(Ljava/lang/String;Lcom/miui/maml/NotifierManager$OnNotifyListener;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/miui/maml/NotifierManager;->safeGet(Ljava/lang/String;)Lcom/miui/maml/NotifierManager$BaseNotifier;

    .line 5
    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    .line 6
    if-nez p1, :cond_9

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p1, p2}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resumeListener(Lcom/miui/maml/NotifierManager$OnNotifyListener;)I

    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p2, v0, :cond_13

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/NotifierManager$BaseNotifier;->resume()V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 20
    :cond_13
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method
