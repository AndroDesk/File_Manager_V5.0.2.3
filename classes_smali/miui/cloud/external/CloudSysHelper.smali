.class public Lmiui/cloud/external/CloudSysHelper;
.super Ljava/lang/Object;
.source "CloudSysHelper.java"


# static fields
.field private static final MAIN_SYNCS_WITH_PKG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudSysHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/external/CloudSysHelper;->MAIN_SYNCS_WITH_PKG:Ljava/util/Map;

    .line 8
    const-string v1, "sms"

    .line 10
    const-string v2, "com.android.mms"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v1, "com.android.contacts"

    .line 17
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v2, "call_log"

    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllMiCloudSyncOff(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->isMiCloudMainSyncItemsOff(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isMiCloudMainSyncItemsOff(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "CloudSysHelper"

    .line 8
    if-nez v0, :cond_f

    .line 10
    const-string p0, "Account is null in isMainSyncsOff()"

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return v1

    .line 16
    :cond_f
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1b

    .line 22
    const-string p0, "Master sync is off in isMainSyncsOff()"

    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return v1

    .line 28
    :cond_1b
    new-instance v3, Lmiui/cloud/AuthoritiesModel;

    .line 30
    invoke-direct {v3, p0, v0}, Lmiui/cloud/AuthoritiesModel;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 33
    invoke-virtual {v3}, Lmiui/cloud/AuthoritiesModel;->getAllAuthorities()Lmiui/cloud/AuthoritiesModel;

    .line 36
    move-result-object p0

    .line 37
    sget-object v3, Lmiui/cloud/AuthoritiesModel;->UNAVAILABLE_AUTHORITIES_FILTER:Lmiui/cloud/AuthoritiesModel$IFilter;

    .line 39
    invoke-virtual {p0, v3}, Lmiui/cloud/AuthoritiesModel;->filterBy(Lmiui/cloud/AuthoritiesModel$IFilter;)Lmiui/cloud/AuthoritiesModel;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lmiui/cloud/AuthoritiesModel;->toList()Ljava/util/List;

    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :cond_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_46

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 63
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_32

    .line 69
    const/4 p0, 0x0

    .line 70
    return p0

    .line 71
    :cond_46
    const-string p0, "all available authorities sync off"

    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v1
.end method

.method public static isXiaomiAccountPresent(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_8

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

.method public static promptEnableAllMiCloudSync(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static promptEnableFindDevice(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lmiui/cloud/external/CloudSysHelper;->startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static startMiCloudInfoSettingsAcitivity(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.action.MICLOUD_INFO_SETTINGS"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x10000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    return-void
.end method
