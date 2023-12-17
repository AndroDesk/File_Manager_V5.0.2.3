.class public Lcom/xiaomi/micloudsdk/MiCloudResolver;
.super Ljava/lang/Object;
.source "MiCloudResolver.java"


# static fields
.field public static final PAUSE_AUTHORITY_VALUE_FOR_ALL:Ljava/lang/String; = "_all"


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

.method public static cancelAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static getAuthorityList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLastestResumeTime(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getLastestResumeTime(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getResumeTime(Landroid/content/Context;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getResumeTimeForAll(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getResumeTimeForAll(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static pauseAllSyncs(Landroid/content/Context;Landroid/accounts/Account;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->pauseAllSyncs(Landroid/content/Context;Landroid/accounts/Account;J)V

    return-void
.end method

.method public static pauseSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->pauseSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V

    return-void
.end method

.method public static requestAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static requestForceSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestForceSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static resumeAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->resumeAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static resumeSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->resumeSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method
