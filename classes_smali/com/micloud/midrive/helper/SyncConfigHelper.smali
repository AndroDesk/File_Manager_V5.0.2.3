.class public Lcom/micloud/midrive/helper/SyncConfigHelper;
.super Ljava/lang/Object;
.source "SyncConfigHelper.java"


# static fields
.field private static final KEY_REQUIRE_NETWORK_FOR_SYNC:Ljava/lang/String; = "require_network_for_sync"

.field private static final KEY_SYNC_TOKEN:Ljava/lang/String; = "sync_token"

.field private static final KEY_TRANSFER_WITH_FREE_NETWORK:Ljava/lang/String; = "transfer_with_free_network"

.field private static final SP_SYNC_META:Ljava/lang/String; = "sync_meta"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSharedPrefs(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/micloud/midrive/utils/ISharedPreferences;->clear()V

    .line 8
    return-void
.end method

.method public static clearSyncToken(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "sync_token"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/micloud/midrive/utils/ISharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static getRequireNetworkForSync(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "require_network_for_sync"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/micloud/midrive/utils/ISharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;
    .registers 2

    .line 1
    const-string v0, "sync_meta"

    .line 3
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/AccountSafeSharedPreferences;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getSyncToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "sync_token"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/micloud/midrive/utils/ISharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static getTransferWithFreeNetwork(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "transfer_with_free_network"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/micloud/midrive/utils/ISharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static setRequireNetworkForSync(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "require_network_for_sync"

    .line 7
    invoke-interface {p0, v0, p1}, Lcom/micloud/midrive/utils/ISharedPreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    return-void
.end method

.method public static setSyncToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "sync_token"

    .line 7
    invoke-interface {p0, v0, p1}, Lcom/micloud/midrive/utils/ISharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public static setTransferWithFreeNetwork(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/helper/SyncConfigHelper;->getSharedPrefs(Landroid/content/Context;)Lcom/micloud/midrive/utils/ISharedPreferences;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "transfer_with_free_network"

    .line 7
    invoke-interface {p0, v0, p1}, Lcom/micloud/midrive/utils/ISharedPreferences;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    return-void
.end method
