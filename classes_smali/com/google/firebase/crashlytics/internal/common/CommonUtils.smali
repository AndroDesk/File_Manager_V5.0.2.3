.class public Lcom/google/firebase/crashlytics/internal/common/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;
    }
.end annotation


# static fields
.field public static final BYTES_IN_A_GIGABYTE:I = 0x40000000

.field public static final BYTES_IN_A_KILOBYTE:I = 0x400

.field public static final BYTES_IN_A_MEGABYTE:I = 0x100000

.field public static final DEVICE_STATE_BETAOS:I = 0x8

.field public static final DEVICE_STATE_COMPROMISEDLIBRARIES:I = 0x20

.field public static final DEVICE_STATE_DEBUGGERATTACHED:I = 0x4

.field public static final DEVICE_STATE_ISSIMULATOR:I = 0x1

.field public static final DEVICE_STATE_JAILBROKEN:I = 0x2

.field public static final DEVICE_STATE_VENDORINTERNAL:I = 0x10

.field private static final GOOGLE_SDK:Ljava/lang/String; = "google_sdk"

.field private static final HEX_VALUES:[C

.field public static final LEGACY_MAPPING_FILE_ID_RESOURCE_NAME:Ljava/lang/String; = "com.crashlytics.android.build_id"

.field public static final LEGACY_SHARED_PREFS_NAME:Ljava/lang/String; = "com.crashlytics.prefs"

.field public static final MAPPING_FILE_ID_RESOURCE_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics.mapping_file_id"

.field private static final SDK:Ljava/lang/String; = "sdk"

.field private static final SHA1_INSTANCE:Ljava/lang/String; = "SHA-1"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.google.firebase.crashlytics"

.field private static final UNCALCULATED_TOTAL_RAM:J = -0x1L

.field private static final UNITY_EDITOR_VERSION:Ljava/lang/String; = "com.google.firebase.crashlytics.unity_version"

.field private static totalRamInBytes:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [C

    .line 5
    fill-array-data v0, :array_e

    .line 8
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->HEX_VALUES:[C

    .line 10
    const-wide/16 v0, -0x1

    .line 12
    sput-wide v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->totalRamInBytes:J

    .line 14
    return-void

    .line 15
    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFreeRamInBytes(Landroid/content/Context;)J
    .registers 3

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 6
    const-string v1, "activity"

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/ActivityManager;

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 17
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 19
    return-wide v0
.end method

.method public static calculateUsedDiskSpaceInBytes(Ljava/lang/String;)J
    .registers 8

    .line 1
    new-instance v0, Landroid/os/StatFs;

    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 9
    move-result p0

    .line 10
    int-to-long v1, p0

    .line 11
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 14
    move-result p0

    .line 15
    int-to-long v3, p0

    .line 16
    mul-long/2addr v3, v1

    .line 17
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 20
    move-result p0

    .line 21
    int-to-long v5, p0

    .line 22
    mul-long/2addr v1, v5

    .line 23
    sub-long/2addr v3, v1

    .line 24
    return-wide v3
.end method

.method public static canTryConnection(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1f

    .line 10
    const-string v0, "connectivity"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1e

    .line 24
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v1, 0x0

    .line 32
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method public static closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_e

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    goto :goto_e

    .line 7
    :catch_6
    move-exception p0

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_e
    :goto_e
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_8

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 6
    goto :goto_8

    .line 7
    :catch_6
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    aget-object p0, p0, p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 15
    move-result-wide p0

    .line 16
    int-to-long v0, p2

    .line 17
    mul-long/2addr p0, v0

    .line 18
    return-wide p0
.end method

.method public static varargs createInstanceIdFrom([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_52

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_52

    .line 8
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    array-length v2, p0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_e
    if-ge v3, v2, :cond_28

    .line 17
    aget-object v4, p0, v3

    .line 19
    if-eqz v4, :cond_25

    .line 21
    const-string v5, "-"

    .line 23
    const-string v6, ""

    .line 25
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v1

    .line 53
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_44

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    goto :goto_34

    .line 69
    :cond_44
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 76
    move-result v1

    .line 77
    if-lez v1, :cond_52

    .line 79
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    :cond_52
    :goto_52
    return-object v0
.end method

.method public static extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "Failed to close system file reader."

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_5f

    .line 10
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    .line 12
    new-instance v3, Ljava/io/FileReader;

    .line 14
    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 17
    const/16 v4, 0x400

    .line 19
    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_3e
    .catchall {:try_start_9 .. :try_end_15} :catchall_3c

    .line 22
    :cond_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_36

    .line 28
    const-string v4, "\\s*:\\s*"

    .line 30
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x2

    .line 35
    invoke-virtual {v4, v3, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    array-length v4, v3

    .line 40
    const/4 v5, 0x1

    .line 41
    if-le v4, v5, :cond_15

    .line 43
    const/4 v4, 0x0

    .line 44
    aget-object v4, v3, v4

    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_15

    .line 52
    aget-object p0, v3, v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_3a
    .catchall {:try_start_15 .. :try_end_35} :catchall_59

    .line 54
    move-object v2, p0

    .line 55
    :cond_36
    :goto_36
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 58
    goto :goto_5f

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    goto :goto_40

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    goto :goto_5b

    .line 63
    :catch_3e
    move-exception p1

    .line 64
    move-object v1, v2

    .line 65
    :goto_40
    :try_start_40
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v5, "Error parsing "

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v3, p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_59

    .line 89
    goto :goto_36

    .line 90
    :catchall_59
    move-exception p0

    .line 91
    move-object v2, v1

    .line 92
    :goto_5b
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->closeOrLog(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 95
    throw p0

    .line 96
    :cond_5f
    :goto_5f
    return-object v2
.end method

.method public static getAppProcessInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .registers 4

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_27

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_27

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 31
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_12

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    :goto_28
    return-object v0
.end method

.method public static getBooleanResourceValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .line 1
    if-eqz p0, :cond_26

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_26

    .line 9
    const-string v1, "bool"

    .line 11
    invoke-static {p0, p1, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_15

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_15
    const-string v0, "string"

    .line 24
    invoke-static {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result p1

    .line 28
    if-lez p1, :cond_26

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_26
    return p2
.end method

.method public static getCpuArchitectureInt()I
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;->getValue()Lcom/google/firebase/crashlytics/internal/common/CommonUtils$Architecture;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getDeviceState(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isRooted(Landroid/content/Context;)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_c

    .line 11
    or-int/lit8 v0, v0, 0x2

    .line 13
    :cond_c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isDebuggerAttached()Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_14

    .line 19
    or-int/lit8 v0, v0, 0x4

    .line 21
    :cond_14
    return v0
.end method

.method public static getLegacySharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    const-string v0, "com.crashlytics.prefs"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static getMappingFileId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "com.google.firebase.crashlytics.mapping_file_id"

    .line 3
    const-string v1, "string"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 11
    const-string v0, "com.crashlytics.android.build_id"

    .line 13
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    :cond_10
    if-eqz v0, :cond_1b

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    :goto_1c
    return-object p0
.end method

.method public static getProximitySensorEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v0, "sensor"

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/hardware/SensorManager;

    .line 17
    const/16 v0, 0x8

    .line 19
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    const/4 v1, 0x1

    .line 26
    :cond_19
    return v1
.end method

.method public static getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 11
    if-lez v0, :cond_26

    .line 13
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "android"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2a

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v0
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_20} :catch_21

    .line 33
    goto :goto_2a

    .line 34
    :catch_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_2a

    .line 39
    :cond_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public static getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 1
    const-string v0, "com.google.firebase.crashlytics"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "string"

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    if-lez p1, :cond_d

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_d
    const-string p0, ""

    .line 16
    return-object p0
.end method

.method public static declared-synchronized getTotalRamInBytes()J
    .registers 8

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-wide v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->totalRamInBytes:J

    .line 6
    const-wide/16 v3, -0x1

    .line 8
    cmp-long v1, v1, v3

    .line 10
    if-nez v1, :cond_8d

    .line 12
    const-wide/16 v1, 0x0

    .line 14
    new-instance v3, Ljava/io/File;

    .line 16
    const-string v4, "/proc/meminfo"

    .line 18
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v4, "MemTotal"

    .line 23
    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->extractFieldFromSystemFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_8b

    .line 33
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    move-result-object v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_91

    .line 39
    :try_start_26
    const-string v4, "KB"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_37

    .line 47
    const-string v4, "KB"

    .line 49
    const/16 v5, 0x400

    .line 51
    invoke-static {v3, v4, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    .line 54
    move-result-wide v1

    .line 55
    goto :goto_8b

    .line 56
    :cond_37
    const-string v4, "MB"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_48

    .line 64
    const-string v4, "MB"

    .line 66
    const/high16 v5, 0x100000

    .line 68
    invoke-static {v3, v4, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    .line 71
    move-result-wide v1

    .line 72
    goto :goto_8b

    .line 73
    :cond_48
    const-string v4, "GB"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_59

    .line 81
    const-string v4, "GB"

    .line 83
    const/high16 v5, 0x40000000  # 2.0f

    .line 85
    invoke-static {v3, v4, v5}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->convertMemInfoToBytes(Ljava/lang/String;Ljava/lang/String;I)J

    .line 88
    move-result-wide v1

    .line 89
    goto :goto_8b

    .line 90
    :cond_59
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v6, "Unexpected meminfo format while computing RAM: "

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_71} :catch_72
    .catchall {:try_start_26 .. :try_end_71} :catchall_91

    .line 114
    goto :goto_8b

    .line 115
    :catch_72
    move-exception v4

    .line 116
    :try_start_73
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 119
    move-result-object v5

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v7, "Unexpected meminfo format while computing RAM: "

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_8b
    :goto_8b
    sput-wide v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->totalRamInBytes:J

    .line 142
    :cond_8d
    sget-wide v1, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->totalRamInBytes:J
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_91

    .line 144
    monitor-exit v0

    .line 145
    return-wide v1

    .line 146
    :catchall_91
    move-exception v1

    .line 147
    monitor-exit v0

    .line 148
    throw v1
.end method

.method private static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hash([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_10

    .line 3
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->hexify([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_10
    move-exception p0

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create hashing algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returning empty string."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1, p0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static hexify([B)Ljava/lang/String;
    .registers 7

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 4
    new-array v0, v0, [C

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_22

    .line 10
    aget-byte v2, p0, v1

    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 14
    mul-int/lit8 v3, v1, 0x2

    .line 16
    sget-object v4, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->HEX_VALUES:[C

    .line 18
    ushr-int/lit8 v5, v2, 0x4

    .line 20
    aget-char v5, v4, v5

    .line 22
    aput-char v5, v0, v3

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 26
    and-int/lit8 v2, v2, 0xf

    .line 28
    aget-char v2, v4, v2

    .line 30
    aput-char v2, v0, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    new-instance p0, Ljava/lang/String;

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 40
    return-object p0
.end method

.method public static isAppDebuggable(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7
    and-int/lit8 p0, p0, 0x2

    .line 9
    if-eqz p0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static isDebuggerAttached()Z
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    return v0
.end method

.method public static isEmulator(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "android_id"

    .line 7
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 13
    const-string v1, "sdk"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_21

    .line 21
    const-string v1, "google_sdk"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_21

    .line 29
    if-nez p0, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 p0, 0x0

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    :goto_21
    const/4 p0, 0x1

    .line 35
    :goto_22
    return p0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static isRooted(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->isEmulator(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez p0, :cond_14

    .line 10
    if-eqz v0, :cond_14

    .line 12
    const-string v2, "test-keys"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 20
    return v1

    .line 21
    :cond_14
    const-string v0, "/system/app/Superuser.apk"

    .line 23
    invoke-static {v0}, La/a;->A(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    new-instance v0, Ljava/io/File;

    .line 32
    const-string v2, "/system/xbin/su"

    .line 34
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    if-nez p0, :cond_2d

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2d

    .line 45
    return v1

    .line 46
    :cond_2d
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public static padWithZerosToMaxIntWidth(I)Ljava/lang/String;
    .registers 4

    .line 1
    if-ltz p0, :cond_1d

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    aput-object p0, v1, v2

    .line 15
    const-string p0, "%1$10s"

    .line 17
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const/16 v0, 0x20

    .line 23
    const/16 v1, 0x30

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v0, "value must be zero or greater"

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public static resolveUnityEditorVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "com.google.firebase.crashlytics.unity_version"

    .line 3
    const-string v1, "string"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getResourcesIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2b

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v2, "Unity Editor version is: "

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 p0, 0x0

    .line 45
    :goto_2c
    return-object p0
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "SHA-1"

    .line 3
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/util/Scanner;

    .line 3
    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 6
    const-string p0, "\\A"

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    const-string p0, ""

    .line 25
    :goto_18
    return-object p0
.end method
