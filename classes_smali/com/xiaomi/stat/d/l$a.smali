.class Lcom/xiaomi/stat/d/l$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 9
    const-string v1, "NOT_CONNECTED"

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-object v1

    .line 14
    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_4d

    .line 20
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1a

    .line 26
    goto :goto_4d

    .line 27
    :cond_1a
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 31
    move-result-object v1

    .line 32
    const/16 v2, 0x9

    .line 34
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v1, :cond_3f

    .line 40
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_3f

    .line 46
    const-string v0, "WIFI"

    .line 48
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3f
    if-eqz v0, :cond_4a

    .line 66
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_4a

    .line 72
    const-string p0, "ETHERNET"

    .line 74
    return-object p0

    .line 75
    :cond_4a
    const-string p0, "UNKNOWN"

    .line 77
    return-object p0

    .line 78
    :cond_4d
    :goto_4d
    return-object v1
.end method

.method private static a(I)Z
    .registers 2

    const/16 v0, 0x1324

    if-le p0, v0, :cond_a

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    const-string v1, "wifi"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 11
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->a(I)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1b

    .line 25
    const-string v0, "5G"

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    invoke-static {p0}, Lcom/xiaomi/stat/d/l$a;->b(I)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2c

    .line 34
    const-string v0, "2G"
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 36
    goto :goto_2c

    .line 37
    :catch_24
    move-exception p0

    .line 38
    const-string v1, "NetWorkStateUtil"

    .line 40
    const-string v2, "getWifiFreeBand error"

    .line 42
    invoke-static {v1, v2, p0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method private static b(I)Z
    .registers 2

    const/16 v0, 0x960

    if-le p0, v0, :cond_a

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
