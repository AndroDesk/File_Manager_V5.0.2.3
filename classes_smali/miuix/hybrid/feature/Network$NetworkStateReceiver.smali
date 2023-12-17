.class Lmiuix/hybrid/feature/Network$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/hybrid/feature/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Network;


# direct methods
.method private constructor <init>(Lmiuix/hybrid/feature/Network;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;->this$0:Lmiuix/hybrid/feature/Network;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/hybrid/feature/Network;Lmiuix/hybrid/feature/Network$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;-><init>(Lmiuix/hybrid/feature/Network;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_40

    .line 7
    const-string p2, "connectivity"

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 22
    move-result-object p1

    .line 23
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 25
    if-ne p1, p2, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    new-instance p2, Lorg/json/JSONObject;

    .line 32
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    :try_start_22
    const-string v0, "connected"

    .line 37
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    iget-object p1, p0, Lmiuix/hybrid/feature/Network$NetworkStateReceiver;->this$0:Lmiuix/hybrid/feature/Network;

    .line 42
    invoke-static {p1}, Lmiuix/hybrid/feature/Network;->access$000(Lmiuix/hybrid/feature/Network;)Lmiuix/hybrid/Callback;

    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Lmiuix/hybrid/Response;

    .line 48
    invoke-direct {v0, p2}, Lmiuix/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    .line 51
    invoke-virtual {p1, v0}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_35} :catch_36

    .line 54
    goto :goto_40

    .line 55
    :catch_36
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const-string p2, "Network"

    .line 62
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_40
    :goto_40
    return-void
.end method
