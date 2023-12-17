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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAll()V
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 6
    if-eqz v1, :cond_d

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->clear()V

    .line 11
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 14
    :cond_d
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public static getMiRouterSmbServer()Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "isMiWifi"

    .line 3
    const-string v1, "SmbDeviceSearchManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    move-result-object v3

    .line 14
    const-string v4, "wifi"

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 22
    sget-boolean v4, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 24
    if-eqz v4, :cond_28

    .line 26
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_21

    .line 32
    :goto_1f
    move-object v4, v2

    .line 33
    goto :goto_35

    .line 34
    :cond_21
    iget v4, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 36
    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    goto :goto_35

    .line 41
    :cond_28
    const-string v4, "miwifi.com"

    .line 43
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_31

    .line 49
    goto :goto_1f

    .line 50
    :cond_31
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 53
    move-result-object v4
    :try_end_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_35} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_35} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_35} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_35} :catch_c1

    .line 54
    :goto_35
    const/4 v5, 0x0

    .line 55
    :try_start_36
    const-string v6, "android.net.wifi.MiuiWifiManager"

    .line 57
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 60
    move-result-object v6

    .line 61
    new-array v7, v5, [Ljava/lang/Class;

    .line 63
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    move-result-object v7

    .line 67
    new-array v8, v5, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    move-result v5
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_4e} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_4e} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_4e} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_36 .. :try_end_4e} :catch_c1

    .line 79
    goto :goto_63

    .line 80
    :catch_4f
    :try_start_4f
    const-class v6, Landroid/net/wifi/WifiManager;

    .line 82
    new-array v7, v5, [Ljava/lang/Class;

    .line 84
    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    move-result-object v0

    .line 88
    new-array v6, v5, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Boolean;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    move-result v5
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_63

    .line 100
    :catch_63
    :goto_63
    if-eqz v4, :cond_e0

    .line 102
    if-nez v5, :cond_6f

    .line 104
    :try_start_67
    const-string v0, "192."

    .line 106
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_e0

    .line 112
    :cond_6f
    sget-object v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 114
    if-eqz v0, :cond_e0

    .line 116
    invoke-static {v0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;

    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v0

    .line 124
    :cond_7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_e0

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/String;

    .line 136
    const-string v5, "::"

    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    array-length v6, v5

    .line 143
    const/4 v7, 0x2

    .line 144
    if-eq v6, v7, :cond_a6

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string v6, "invalid server string: "

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    goto :goto_7b

    .line 167
    :cond_a6
    const/4 v6, 0x1

    .line 168
    aget-object v5, v5, v6

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v7, "/"

    .line 180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    move-result v5
    :try_end_be
    .catch Ljava/lang/NoSuchMethodException; {:try_start_67 .. :try_end_be} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_67 .. :try_end_be} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_be} :catch_c6
    .catch Ljava/net/UnknownHostException; {:try_start_67 .. :try_end_be} :catch_c1

    .line 191
    if-eqz v5, :cond_7b

    .line 193
    return-object v3

    .line 194
    :catch_c1
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    goto :goto_e0

    .line 199
    :catch_c6
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    goto :goto_e0

    .line 208
    :catch_cf
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    goto :goto_e0

    .line 217
    :catch_d8
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_e0
    :goto_e0
    return-object v2
.end method

.method public static hasMiRouter()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$100(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public static declared-synchronized register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 6
    if-nez v1, :cond_f

    .line 8
    new-instance v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;-><init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$1;)V

    .line 14
    sput-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 16
    :cond_f
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 18
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->register(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method

.method public static declared-synchronized toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 6
    if-eqz v1, :cond_a

    .line 8
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->toggleSearch(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 11
    :cond_a
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_c
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
.end method

.method public static declared-synchronized unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)V
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 6
    if-eqz v1, :cond_15

    .line 8
    invoke-virtual {v1, p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->unregister(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SearchDoneListener;)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_15

    .line 14
    sget-object p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->quitSearch()V

    .line 19
    const/4 p0, 0x0

    .line 20
    sput-object p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager;->sDeviceSearcher:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method
