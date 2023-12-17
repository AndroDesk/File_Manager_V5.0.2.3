.class public Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;
.super Ljava/lang/Object;
.source "SmbDeviceSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;,
        Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmbDeviceSearchManager"

.field private static final XIAOMI_ROUTER_INTERNAL_DOMAIN_NAME:Ljava/lang/String; = "miwifi.com"

.field private static sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAll()V
    .registers 2

    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMiRouterSmbServer()Ljava/lang/String;
    .registers 9

    const-string v0, "isMiWifi"

    const-string v1, "SmbDeviceSearchManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sget-boolean v4, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    if-nez v4, :cond_21

    :goto_1f
    move-object v4, v2

    goto :goto_35

    :cond_21
    iget v4, v4, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    :cond_28
    const-string v4, "miwifi.com"

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-nez v4, :cond_31

    goto :goto_1f

    :cond_31
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_35} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_35} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_35} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_35} :catch_c1

    :goto_35
    const/4 v5, 0x0

    :try_start_36
    const-string v6, "android.net.wifi.MiuiWifiManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_4e} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_4e} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_4e} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_36 .. :try_end_4e} :catch_c1

    goto :goto_63

    :catch_4f
    :try_start_4f
    const-class v6, Landroid/net/wifi/WifiManager;

    new-array v7, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    if-eqz v4, :cond_e0

    if-nez v5, :cond_6f

    :try_start_67
    const-string v0, "192."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    :cond_6f
    sget-object v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-eqz v0, :cond_e0

    invoke-static {v0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "::"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid server string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_a6
    const/4 v6, 0x1

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_be
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_be} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_be} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_be} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_67 .. :try_end_be} :catch_c1

    if-eqz v5, :cond_7b

    return-object v3

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e0

    :catch_c6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    :catch_d8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    :goto_e0
    return-object v2
.end method

.method public static hasMiRouter()Z
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static declared-synchronized register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 4

    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-nez v1, :cond_f

    new-instance v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;-><init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$1;)V

    sput-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    :cond_f
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    invoke-virtual {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->quitSearch()V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method
