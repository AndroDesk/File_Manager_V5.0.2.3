.class public Lcom/android/fileexplorer/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWifiNetwork()Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_33

    .line 23
    array-length v3, v2

    .line 24
    move v4, v1

    .line 25
    :goto_18
    if-ge v4, v3, :cond_33

    .line 27
    aget-object v5, v2, v4

    .line 29
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_30

    .line 35
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_30

    .line 41
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x1

    .line 46
    if-ne v5, v6, :cond_30

    .line 48
    return v6

    .line 49
    :cond_30
    add-int/lit8 v4, v4, 0x1

    .line 51
    goto :goto_18

    .line 52
    :cond_33
    return v1
.end method
