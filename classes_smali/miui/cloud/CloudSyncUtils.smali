.class public Lmiui/cloud/CloudSyncUtils;
.super Ljava/lang/Object;
.source "CloudSyncUtils.java"


# static fields
.field public static final AUTHORITY_CLOUD_BACKUP:Ljava/lang/String; = "micloud_cloud_backup"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY_FIND_DEVICE:Ljava/lang/String; = "micloud_find_device"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLOUD_APP_AUTHORITY:Ljava/lang/String; = "com.miui.backup.cloud.CloudAppProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MMSLITE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.xiaomi.mms.providers.SmsProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_AUTHORITY:Ljava/lang/String; = "authority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_CHANGE_SOURCE:Ljava/lang/String; = "change_source"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudSyncUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/AnalyticsHelper;->analyseActivateSource(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static analyseMiCloudLoginEnable(Landroid/content/Context;ZZZ)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/AnalyticsHelper;->analyseMiCloudLoginEnable(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public static analyseMiCloudLoginEnable(Landroid/content/Context;ZZZZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/AnalyticsHelper;->analyseMiCloudLoginEnable(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method public static clearAllSyncChangedLog(Landroid/content/Context;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/SyncStateChangedHelper;->clearAllSyncChangedLog(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static clearLocalWatermark(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static clearLocalWatermark(Landroid/content/Context;Ljava/lang/String;JI)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static clearShouldPullAndUpdateLocalWatermark(Landroid/content/Context;JLjava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static clearShouldPullAndUpdateLocalWatermark(Landroid/content/Context;JLjava/lang/String;JI)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getAllAuthorities(Landroid/accounts/Account;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0, v0}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x0

    if-nez p1, :cond_d

    new-array p1, p0, [Ljava/lang/String;

    .line 3
    :cond_d
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 4
    array-length v2, v1

    :goto_12
    if-ge p0, v2, :cond_3a

    aget-object v3, v1, p0

    .line 5
    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    const-string v5, "com.xiaomi"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 7
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 p0, p0, 0x1

    goto :goto_12

    :cond_3a
    return-object v0
.end method

.method public static getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/MiCloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getCurrentSyncSettingState(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/cloud/sync/data/SyncSettingState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/SyncStateChangedHelper;->getCurrentSyncSettingState(Landroid/content/Context;)Ljava/util/HashMap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getEnabledAuthorities(Landroid/accounts/Account;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p0, v0}, Lmiui/cloud/CloudSyncUtils;->getEnabledAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getEnabledAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 3
    :cond_8
    invoke-static {p0, p1}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {p0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    return-object v0
.end method

.method public static getSyncEnabledWithActivation(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8

    .line 1
    if-eqz p0, :cond_4e

    .line 3
    if-eqz p1, :cond_4e

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_46

    .line 11
    invoke-static {p2}, Lmiui/cloud/CloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_46

    .line 17
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    .line 20
    move-result v0

    .line 21
    if-ge p3, v0, :cond_3e

    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eq p3, v1, :cond_2e

    .line 28
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    if-le v0, v3, :cond_2d

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0, p3, p1, p2}, Lmiui/cloud/CloudSyncUtils;->getAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;)Z

    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2d
    return v3

    .line 47
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    new-array p1, v3, [Ljava/lang/Object;

    .line 51
    aput-object p2, p1, v2

    .line 53
    const-string p2, "simIndex cannot be -1 when authority(%s) need activate"

    .line 55
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string p1, "simIndex must be smaller than simCount"

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    const-string p1, "only support need activate authority"

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string p1, "context or account is null"

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0
.end method

.method public static getSyncPrefDefaultSimIndex(Landroid/content/Context;Ljava/lang/String;)I
    .registers 2

    .line 3
    invoke-static {p1}, Lmiui/cloud/CloudSyncUtils;->getSyncPrefDefaultSimIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSyncPrefDefaultSimIndex(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lmiui/cloud/CloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_10

    .line 2
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getDefaultSlotId()I

    move-result p0

    if-ne p0, v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    move v0, p0

    :cond_10
    :goto_10
    return v0
.end method

.method public static isAllSyncsOff(Landroid/content/Context;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p0, :cond_f

    .line 8
    const-string p0, "CloudSyncUtils"

    .line 10
    const-string v1, "Account is null in isAllSyncsOff()"

    .line 12
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-static {p0}, Lmiui/cloud/CloudSyncUtils;->getAllAuthorities(Landroid/accounts/Account;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2b

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-static {p0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_17

    .line 42
    const/4 p0, 0x0

    .line 43
    return p0

    .line 44
    :cond_2b
    return v0
.end method

.method public static isFindDeviceEnabled(Landroid/content/Context;Landroid/accounts/Account;)Z
    .registers 3

    .line 1
    if-nez p1, :cond_b

    .line 3
    const-string p0, "CloudSyncUtils"

    .line 5
    const-string p1, "account is null in isFindDeviceEnabled()"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_b
    const-string v0, "account"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/accounts/AccountManager;

    .line 20
    const-string v0, "extra_find_device_enabled"

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    const-string p1, "true"

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public static needActivate(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiui/cloud/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/MiCloudSyncUtils;->setAutoSyncForSim(Landroid/content/ContentResolver;ILandroid/accounts/Account;Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public static setMiCloudSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiui/cloud/util/SyncStateChangedHelper;->setMiCloudSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public static setShouldPullFromServer(Landroid/content/Context;JLjava/lang/String;J)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static setSyncChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiui/cloud/util/SyncStateChangedHelper;->setSyncChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    return-void
.end method

.method public static setSyncTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static shouldPullFromServer(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static shouldPullFromServer(Landroid/content/Context;Ljava/lang/String;JI)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static startMiCloudMemberActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_PREVIEW:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const-string v0, "http://account.preview.n.xiaomi.net/pass/serviceLogin?callback=http%3A%2F%2Fmicloudweb.preview.n.xiaomi.com%2Fsts%3Fsign%3DLMx3DWB%252FO%252FtjMckaek2OtO0%252BkzQ%253D%26followup%3Dhttp%253A%252F%252Fmicloudweb.preview.n.xiaomi.com%252Fvip&sid=i.mi.com"

    .line 7
    goto :goto_10

    .line 8
    :cond_7
    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants;->USE_MEMBER_DAILY:Z

    .line 10
    if-eqz v0, :cond_e

    .line 12
    const-string v0, "https://account.xiaomi.com/pass/serviceLogin?callback=https%3A%2F%2Fdaily.i.mi.com%2Fsts%3Fsign%3DGTIyREMRa%252Bf1eVmlJubCFg%252FK3eA%253D%26followup%3Dhttps%253A%252F%252Fdaily.i.mi.com%252Fvip&sid=i.mi.com&_locale=zh_CN"

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const-string v0, "https://account.xiaomi.com/pass/serviceLogin?callback=https%3A%2F%2Fi.mi.com%2Fsts%3Fsign%3Dn9zfyPtPHlxmLf0eYJmwASvEjEo%253D%26followup%3Dhttps%253A%252F%252Fi.mi.com%252Fvip&sid=i.mi.com"

    .line 17
    :goto_10
    new-instance v1, Landroid/os/Bundle;

    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string v2, "extra_url"

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    .line 28
    const-string v2, "extra_is_sso_url"

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2b

    .line 39
    const-string v0, "extra_membership_source"

    .line 41
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2b
    new-instance p1, Landroid/content/Intent;

    .line 46
    const-string v0, "com.xiaomi.action.MICLOUD_MEMBER"

    .line 48
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
