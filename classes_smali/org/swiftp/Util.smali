.class public abstract Lorg/swiftp/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftp/Util$MediaScannerNotifier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToJson([B)Lorg/json/JSONObject;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    new-instance v1, Ljava/lang/String;

    .line 5
    const-string v2, "UTF-8"

    .line 7
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object v0

    .line 14
    :catch_d
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private static byteOfInt(II)B
    .registers 2

    mul-int/lit8 p1, p1, 0x8

    shr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static concatStrArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-object v0
.end method

.method public static deletedFileNotify(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/swiftp/Util;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Notifying others about deleted file: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lorg/swiftp/Util$MediaScannerNotifier;

    .line 25
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1, p0}, Lorg/swiftp/Util$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static getAndroidId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android_id"

    .line 11
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    :try_start_8
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_17} :catch_18

    .line 24
    return-object v0

    .line 25
    :catch_18
    sget-object v0, Lorg/swiftp/Util;->TAG:Ljava/lang/String;

    .line 27
    const-string v1, "NameNotFoundException looking up SwiFTP version"

    .line 29
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public static intToInet(I)Ljava/net/InetAddress;
    .registers 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [B

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_f

    .line 7
    invoke-static {p0, v2}, Lorg/swiftp/Util;->byteOfInt(II)B

    .line 10
    move-result v3

    .line 11
    aput-byte v3, v1, v2

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    :try_start_f
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 19
    move-result-object p0
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    return-object p0

    .line 21
    :catch_14
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static jsonToByteArray(Lorg/json/JSONObject;)[B
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "UTF-8"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return-object p0

    .line 12
    :catch_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static newFileNotify(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lorg/swiftp/Util;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "Notifying others about new file: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lorg/swiftp/Util$MediaScannerNotifier;

    .line 25
    invoke-static {}, Lorg/swiftp/Globals;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1, p0}, Lorg/swiftp/Util$MediaScannerNotifier;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static sleepIgnoreInterupt(J)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    return-void
.end method
