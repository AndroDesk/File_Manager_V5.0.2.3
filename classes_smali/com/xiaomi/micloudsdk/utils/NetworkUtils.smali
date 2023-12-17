.class public Lcom/xiaomi/micloudsdk/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkWifiAvailability(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 17
    move-result-object p0

    .line 18
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 20
    if-eq p0, v1, :cond_1c

    .line 22
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 24
    if-ne p0, v1, :cond_1a

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 4

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_c

    .line 12
    goto :goto_23

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_23

    .line 19
    move v1, v0

    .line 20
    :goto_13
    array-length v2, p0

    .line 21
    if-ge v1, v2, :cond_23

    .line 23
    aget-object v2, p0, v1

    .line 25
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_20

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_13

    .line 36
    :cond_23
    :goto_23
    return v0
.end method

.method public static isNetworkMetered(Landroid/content/Context;)Z
    .registers 2

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    if-nez p0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method
