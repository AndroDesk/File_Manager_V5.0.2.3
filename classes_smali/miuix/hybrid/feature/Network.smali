.class public Lmiuix/hybrid/feature/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/hybrid/feature/Network$NetworkStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_NOTIFICATION:Ljava/lang/String; = "disableNotification"

.field private static final ACTION_ENABLE_NOTIFICATION:Ljava/lang/String; = "enableNotification"

.field private static final ACTION_GET_TYPE:Ljava/lang/String; = "getType"

.field private static final KEY_CONNECTED:Ljava/lang/String; = "connected"

.field private static final KEY_METERED:Ljava/lang/String; = "metered"

.field private static final LOG_TAG:Ljava/lang/String; = "Network"


# instance fields
.field private mCallback:Lmiuix/hybrid/Callback;

.field private mFilter:Landroid/content/IntentFilter;

.field private mLifecycleListener:Lmiuix/hybrid/LifecycleListener;

.field private mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    .line 11
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static synthetic access$000(Lmiuix/hybrid/feature/Network;)Lmiuix/hybrid/Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/hybrid/feature/Network;->mCallback:Lmiuix/hybrid/Callback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    .line 4
    return-void
.end method

.method private disableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    .line 8
    new-instance p1, Lmiuix/hybrid/Response;

    .line 10
    const/16 v0, 0x64

    .line 12
    invoke-direct {p1, v0}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 15
    return-object p1
.end method

.method private enableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    .line 8
    invoke-virtual {v0}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mCallback:Lmiuix/hybrid/Callback;

    .line 18
    new-instance p1, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {p1, p0, v2}, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/feature/Network$1;)V

    .line 24
    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    .line 26
    iget-object v3, p0, Lmiuix/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    .line 28
    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    new-instance p1, Lmiuix/hybrid/feature/Network$1;

    .line 33
    invoke-direct {p1, p0, v0}, Lmiuix/hybrid/feature/Network$1;-><init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V

    .line 36
    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mLifecycleListener:Lmiuix/hybrid/LifecycleListener;

    .line 38
    invoke-virtual {v0, p1}, Lmiuix/hybrid/NativeInterface;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 41
    return-object v2
.end method

.method private isMetered(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "connectivity"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 17
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 20
    move-result p1

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :try_start_19
    const-string v1, "metered"

    .line 28
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_29

    .line 32
    :catch_1f
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const-string v1, "Network"

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_29
    new-instance p1, Lmiuix/hybrid/Response;

    .line 44
    invoke-direct {p1, v0}, Lmiuix/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    .line 47
    return-object p1
.end method

.method private unregisterNotification(Lmiuix/hybrid/NativeInterface;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    invoke-virtual {p1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/hybrid/feature/Network;->mLifecycleListener:Lmiuix/hybrid/LifecycleListener;

    .line 11
    invoke-virtual {p1, v1}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    .line 14
    iget-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    .line 22
    :cond_15
    return-void
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getType"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 15
    return-object p1

    .line 16
    :cond_f
    const-string v0, "enableNotification"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    const-string v0, "disableNotification"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_25

    .line 35
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 37
    return-object p1

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getType"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->isMetered(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    const-string v1, "enableNotification"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->enableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1e
    const-string v1, "disableNotification"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2b

    .line 39
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->disableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2b
    new-instance p1, Lmiuix/hybrid/Response;

    .line 46
    const/16 v0, 0xcc

    .line 48
    const-string v1, "no such action"

    .line 50
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 53
    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
