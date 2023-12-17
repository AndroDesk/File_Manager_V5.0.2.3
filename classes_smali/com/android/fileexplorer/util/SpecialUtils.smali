.class public Lcom/android/fileexplorer/util/SpecialUtils;
.super Ljava/lang/Object;
.source "SpecialUtils.java"


# static fields
.field private static final QQ_APP_ID:J = 0x4L

.field private static final QQ_FILERECV:J = 0x4064a5d2f00401L

.field private static final QQ_IMAGES:J = 0x4064a0e1f00401L

.field public static final QQ_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final WECHAT_APP_ID:J = 0x3L

.field private static final WECHAT_DOWNLOAD_DIRID:J = 0x3f5c882b7c0401L

.field private static final WECHAT_EXPIRE:J = 0x42f2ac00L

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field public static final WECHAT_TEMP_VIDEO_DIRID:J = 0x490224a67c0401L

.field private static final WECHAT_VIDEO_DIRID:J = 0x408d262f4c0401L

.field private static final WECHAT_WEXIN_DIRID:J = 0x4064cf14200401L

.field private static sNotifyArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Landroid/util/LongSparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/SpecialUtils;->sNotifyArray:Landroid/util/LongSparseArray;

    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [Ljava/lang/Long;

    .line 11
    const-wide v2, 0x3f5c882b7c0401L

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 23
    const-wide v4, 0x4064cf14200401L

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x1

    .line 33
    aput-object v2, v1, v4

    .line 35
    const-wide v5, 0x490224a67c0401L

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v2

    .line 44
    const/4 v5, 0x2

    .line 45
    aput-object v2, v1, v5

    .line 47
    const-wide/16 v6, 0x3

    .line 49
    invoke-virtual {v0, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/android/fileexplorer/util/SpecialUtils;->sNotifyArray:Landroid/util/LongSparseArray;

    .line 54
    new-array v1, v5, [Ljava/lang/Long;

    .line 56
    const-wide v5, 0x4064a5d2f00401L

    .line 61
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    move-result-object v2

    .line 65
    aput-object v2, v1, v3

    .line 67
    const-wide v2, 0x4064a0e1f00401L

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v2

    .line 76
    aput-object v2, v1, v4

    .line 78
    const-wide/16 v2, 0x4

    .line 80
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "activity"

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/ActivityManager;

    .line 13
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p0, :cond_14

    .line 20
    return-object v1

    .line 21
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2e

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 37
    if-nez v2, :cond_27

    .line 39
    goto :goto_18

    .line 40
    :cond_27
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 42
    if-ne v3, v0, :cond_18

    .line 44
    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 46
    return-object p0

    .line 47
    :cond_2e
    return-object v1
.end method

.method public static getWeChatTempVideoExpiredTimeLower()J
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    const/16 v1, 0xb

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 18
    const/16 v1, 0xc

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 23
    const/16 v1, 0xd

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 28
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 31
    move-result-wide v0

    .line 32
    const-wide/32 v2, 0x42f2ac00

    .line 35
    sub-long/2addr v0, v2

    .line 36
    return-wide v0
.end method

.method public static getWeChatTempVideoExpiredTimeUpper()J
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    const/16 v1, 0xb

    .line 14
    const/16 v2, 0x17

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 19
    const/16 v1, 0xc

    .line 21
    const/16 v2, 0x3b

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 26
    const/16 v1, 0xd

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 34
    move-result-wide v0

    .line 35
    const-wide/32 v2, 0x42f2ac00

    .line 38
    sub-long/2addr v0, v2

    .line 39
    return-wide v0
.end method

.method public static getWechatVideoFileName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/TimeUtils;->formatMonthDay(J)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    .line 9
    aput-object p1, p2, v0

    .line 11
    const p1, 0x7f11047a

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static isService()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/util/SpecialUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1f

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    xor-int/lit8 v0, v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public static isWeChatTempVideoExpired(J)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/SpecialUtils;->getWeChatTempVideoExpiredTimeLower()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/util/SpecialUtils;->getWeChatTempVideoExpiredTimeUpper()J

    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v0, p0

    .line 11
    if-gtz v0, :cond_12

    .line 13
    cmp-long p0, v2, p0

    .line 15
    if-ltz p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method public static isWechatTempVideo(J)Z
    .registers 4

    const-wide v0, 0x490224a67c0401L

    cmp-long p0, p0, v0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isWechatVideo(J)Z
    .registers 4

    const-wide v0, 0x408d262f4c0401L

    cmp-long p0, p0, v0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static isWechatVideo(Ljava/lang/String;J)Z
    .registers 5

    .line 1
    const-string v0, "com.tencent.mm"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_13

    .line 9
    const-wide v0, 0x408d262f4c0401L

    .line 14
    cmp-long p0, p1, v0

    .line 16
    if-nez p0, :cond_13

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p0, 0x0

    .line 21
    :goto_14
    return p0
.end method
