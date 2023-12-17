.class public Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitorFactory.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;


# static fields
.field private static final NETWORK_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .registers 6

    .line 1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    const/4 v1, 0x3

    .line 13
    const-string v2, "ConnectivityMonitor"

    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1e

    .line 21
    if-eqz v0, :cond_19

    .line 23
    const-string v1, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const-string v1, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    .line 28
    :goto_1b
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_1e
    if-eqz v0, :cond_26

    .line 33
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    .line 35
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    new-instance v0, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    .line 41
    invoke-direct {v0}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    .line 44
    :goto_2b
    return-object v0
.end method
