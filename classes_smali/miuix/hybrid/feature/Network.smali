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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/hybrid/feature/Network;)Lmiuix/hybrid/Callback;
    .registers 1

    iget-object p0, p0, Lmiuix/hybrid/feature/Network;->mCallback:Lmiuix/hybrid/Callback;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    return-void
.end method

.method private disableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 3

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lmiuix/hybrid/Response;-><init>(I)V

    return-object p1
.end method

.method private enableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 6

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/hybrid/feature/Network;->unregisterNotification(Lmiuix/hybrid/NativeInterface;)V

    invoke-virtual {v0}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    move-result-object p1

    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mCallback:Lmiuix/hybrid/Callback;

    new-instance p1, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/feature/Network$1;)V

    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    iget-object v3, p0, Lmiuix/hybrid/feature/Network;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lmiuix/hybrid/feature/Network$1;

    invoke-direct {p1, p0, v0}, Lmiuix/hybrid/feature/Network$1;-><init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/NativeInterface;)V

    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mLifecycleListener:Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v0, p1}, Lmiuix/hybrid/NativeInterface;->addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    return-object v2
.end method

.method private isMetered(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_19
    const-string v1, "metered"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_29

    :catch_1f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Network"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    new-instance p1, Lmiuix/hybrid/Response;

    invoke-direct {p1, v0}, Lmiuix/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method private unregisterNotification(Lmiuix/hybrid/NativeInterface;)V
    .registers 4

    iget-object v0, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lmiuix/hybrid/feature/Network;->mLifecycleListener:Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {p1, v1}, Lmiuix/hybrid/NativeInterface;->removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V

    iget-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/hybrid/feature/Network;->mReceiver:Lmiuix/hybrid/feature/Network$NetworkStateReceiver;

    :cond_15
    return-void
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1

    :cond_f
    const-string v0, "enableNotification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1

    :cond_1a
    const-string v0, "disableNotification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->isMetered(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v1, "enableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->enableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string v1, "disableNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network;->disableNotification(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_2b
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

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
