.class public Lcom/android/fileexplorer/analytics/DeviceIdGenerator;
.super Ljava/lang/Object;
.source "DeviceIdGenerator.java"


# static fields
.field private static final DEFAULT_DEVICE_ID:Ljava/lang/String; = "0000000000"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id4"

.field private static final KEY_DEVICE_ID_NEW:Ljava/lang/String; = "device_id3"

.field private static final PREF_NAME:Ljava/lang/String; = "xl_device_id"

.field private static final TAG:Ljava/lang/String; = "DeviceIdGenerator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAllDeviceIds()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_3a

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v1, v2}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getMd5DeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v5, "mac:"

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " with md5:"

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, " is added."

    .line 46
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_3a
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getAllIMEIs()Ljava/util/List;

    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 66
    move-result v2

    .line 67
    const-string v3, " is added"

    .line 69
    const-string v4, "IMEI:"

    .line 71
    const/4 v5, 0x0

    .line 72
    if-nez v2, :cond_86

    .line 74
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    move-result-object v1

    .line 78
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_86

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-static {v2, v5}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getMd5DeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_4d

    .line 100
    sget-object v7, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, ", md5:"

    .line 115
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-static {v7, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    goto :goto_4d

    .line 135
    :cond_86
    const/4 v1, 0x0

    .line 136
    move v2, v5

    .line 137
    :goto_88
    const/4 v6, 0x3

    .line 138
    if-ge v2, v6, :cond_cd

    .line 140
    :try_start_8b
    const-string v6, "getDeviceId"

    .line 142
    invoke-static {v6, v2}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getDeviceIdBySlot(Ljava/lang/String;I)Ljava/lang/String;

    .line 145
    move-result-object v1
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_91} :catch_92

    .line 146
    goto :goto_98

    .line 147
    :catch_92
    :try_start_92
    const-string v6, "getDeviceIdGemini"

    .line 149
    invoke-static {v6, v2}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getDeviceIdBySlot(Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    move-result-object v1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_98} :catch_98

    .line 153
    :catch_98
    :goto_98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_ca

    .line 159
    invoke-static {v1, v5}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getMd5DeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_ca

    .line 169
    sget-object v7, Lcom/android/fileexplorer/encryption/FixCorrupt;->TAG:Ljava/lang/String;

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v9, ", with md5:"

    .line 184
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v8

    .line 197
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_ca
    add-int/lit8 v2, v2, 0x1

    .line 205
    goto :goto_88

    .line 206
    :cond_cd
    return-object v0
.end method

.method private static getAllIMEIs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_5
    const-string v1, "miui.telephony.TelephonyManager"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getDefault"

    .line 14
    const/4 v3, 0x0

    .line 15
    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v2

    .line 21
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    const-string v4, "getMeidList"

    .line 29
    new-array v5, v3, [Ljava/lang/Class;

    .line 31
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v4

    .line 35
    new-array v5, v3, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/List;

    .line 43
    if-eqz v4, :cond_35

    .line 45
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_35

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_35
    const-string v4, "getImeiList"

    .line 56
    new-array v5, v3, [Ljava/lang/Class;

    .line 58
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    move-result-object v1

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Ljava/util/List;

    .line 70
    if-eqz v1, :cond_55

    .line 72
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_55

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_51

    .line 81
    goto :goto_55

    .line 82
    :catch_51
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :cond_55
    :goto_55
    return-object v0
.end method

.method private static getDeviceId(Z)Ljava/lang/String;
    .registers 6

    .line 1
    if-eqz p0, :cond_5

    .line 3
    const-string v0, "device_id4"

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string v0, "device_id3"

    .line 8
    :goto_7
    invoke-static {v0}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getDeviceIdFromSP(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_12

    .line 18
    return-object v1

    .line 19
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->getIMEI()Ljava/lang/String;

    .line 22
    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_17

    .line 23
    goto :goto_2e

    .line 24
    :catch_17
    move-exception v2

    .line 25
    const-string v3, "getDeviceId error: "

    .line 27
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const-string v3, "DeviceIdGenerator"

    .line 44
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_2e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v2

    .line 51
    const-string v3, "00"

    .line 53
    if-eqz v2, :cond_47

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_44

    .line 65
    const-string v1, "0000000000"

    .line 67
    move-object v2, v3

    .line 68
    goto :goto_49

    .line 69
    :cond_44
    const-string v2, "01"

    .line 71
    goto :goto_49

    .line 72
    :cond_47
    const-string v2, "10"

    .line 74
    :goto_49
    if-eqz p0, :cond_67

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    invoke-static {v1}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    :goto_6b
    invoke-static {p0, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_78

    .line 118
    invoke-static {v0, p0}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->saveDeviceIdToSP(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_78
    return-object p0
.end method

.method private static getDeviceIdBySlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "phone"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v3, v2, [Ljava/lang/Class;

    .line 28
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v4, v3, v5

    .line 33
    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object p0

    .line 37
    new-array v1, v2, [Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 43
    aput-object p1, v1, v5

    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_37

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 p0, 0x0

    .line 57
    :goto_38
    return-object p0
.end method

.method private static getDeviceIdFromSP(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "xl_device_id"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static getMd5DeviceId(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const-string p1, "01"

    .line 5
    goto :goto_7

    .line 6
    :cond_5
    const-string p1, "10"

    .line 8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static getOldDeviceId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isRestrictGetIMEI()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_35

    .line 7
    const-string v0, "DeviceIdGenerator"

    .line 9
    const-string v1, "restrict"

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->getPrivateSecretKey()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_18

    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->generateKey()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    sget-object v1, Lcom/android/fileexplorer/constant/Device;->BUILD_DEVICE:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/android/fileexplorer/model/SettingManager;->setPrivateSecretKey(Ljava/lang/String;)V

    .line 53
    return-object v0

    .line 54
    :cond_35
    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getDeviceId(Z)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "UTF-8"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_17
    if-ge v3, v2, :cond_3f

    .line 26
    aget-byte v4, v0, v3

    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 37
    move-result v5

    .line 38
    const/4 v6, 0x1

    .line 39
    if-ne v5, v6, :cond_35

    .line 41
    const-string v5, "0"

    .line 43
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_3c

    .line 54
    :cond_35
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_17

    .line 64
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_43} :catch_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_43} :catch_44

    .line 68
    return-object p0

    .line 69
    :catch_44
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    goto :goto_4d

    .line 74
    :catch_49
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    :goto_4d
    return-object p0
.end method

.method private static saveDeviceIdToSP(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "xl_device_id"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method
