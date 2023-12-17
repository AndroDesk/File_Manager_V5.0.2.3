.class public Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;
.super Ljava/lang/Object;
.source "MiCloudResolver.java"


# static fields
.field private static final OPERATION_VALUE_ALARM:Ljava/lang/String; = "alarm"

.field public static final PAUSE_AUTHORITY_VALUE_FOR_ALL:Ljava/lang/String; = "_all"

.field private static final TAG:Ljava/lang/String; = "MiCloudResolver"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertAccount(Landroid/accounts/Account;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_d

    .line 3
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 5
    const-string v0, "com.xiaomi"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "illegal account"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method private static assertAuthority(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1d

    .line 7
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v1, "illegal authority: not registered authority: "

    .line 22
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v0, "illegal authority: empty"

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method private static assertContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v0, "context is null"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
.end method

.method private static assertTime(J)V
    .registers 4

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long p0, p0, v0

    .line 5
    if-ltz p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p1, "illegal time"

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method public static cancelAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    const-string v0, "MiCloudResolver"

    .line 9
    const-string v1, "cancelAllSyncs"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_25

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 37
    goto :goto_15

    .line 38
    :cond_25
    return-void
.end method

.method public static cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "cancelSync: authority: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MiCloudResolver"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->sendCancelCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static getAuthorityList()Ljava/util/List;
    .registers 7
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
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_b
    if-ge v3, v2, :cond_21

    .line 14
    aget-object v4, v1, v3

    .line 16
    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 18
    const-string v6, "com.xiaomi"

    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_1e

    .line 26
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_b

    .line 34
    :cond_21
    return-object v0
.end method

.method public static getLastestResumeTime(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    const-string p1, "MiCloudResolver"

    .line 9
    const-string v0, "getLastestResumeTime"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    const-wide v0, 0x7fffffffffffffffL

    .line 27
    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_30

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 39
    invoke-static {p0, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 42
    move-result-wide v2

    .line 43
    cmp-long v4, v2, v0

    .line 45
    if-gez v4, :cond_1a

    .line 47
    move-wide v0, v2

    .line 48
    goto :goto_1a

    .line 49
    :cond_30
    const-string p1, "_all"

    .line 51
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 54
    move-result-wide p0

    .line 55
    cmp-long v2, v0, p0

    .line 57
    if-gez v2, :cond_3b

    .line 59
    move-wide v0, p0

    .line 60
    :cond_3b
    return-wide v0
.end method

.method public static getResumeTime(Landroid/content/Context;Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 7
    const-string v0, "getResumeTime: authority: "

    .line 9
    const-string v1, "MiCloudResolver"

    .line 11
    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->isPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 21
    move-result-wide v1

    .line 22
    if-eqz v0, :cond_18

    .line 24
    return-wide v1

    .line 25
    :cond_18
    const-string p1, "_all"

    .line 27
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 30
    move-result-wide p0

    .line 31
    cmp-long v0, p0, v1

    .line 33
    if-gez v0, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move-wide v1, p0

    .line 37
    :goto_24
    return-wide v1
.end method

.method public static getResumeTimeForAll(Landroid/content/Context;Landroid/accounts/Account;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    const-string p1, "MiCloudResolver"

    .line 9
    const-string v0, "getResumeTimeForAll"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string p1, "_all"

    .line 16
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->loadResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "isSyncActive: authority: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MiCloudResolver"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v0, "isSyncPausing: authority: "

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string v0, "MiCloudResolver"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v0

    .line 36
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getResumeTime(Landroid/content/Context;Ljava/lang/String;)J

    .line 39
    move-result-wide p0

    .line 40
    cmp-long p0, v0, p0

    .line 42
    if-gtz p0, :cond_2d

    .line 44
    const/4 p0, 0x1

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    const/4 p0, 0x0

    .line 47
    :goto_2e
    return p0
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v1, "isSyncPending: authority: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MiCloudResolver"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static pauseAllSyncs(Landroid/content/Context;Landroid/accounts/Account;J)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2, p3}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertTime(J)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "pauseAllSyncs: time: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MiCloudResolver"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 35
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->deletePauseExceptAuthority(Landroid/content/Context;)V

    .line 38
    const-string p1, "_all"

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 43
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToScheduleResume(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public static pauseSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;J)V
    .registers 7

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    invoke-static {p3, p4}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertTime(J)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "pauseSync: authority: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", time: "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const-string v1, "MiCloudResolver"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->cancelSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p2, p3, p4}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 49
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToScheduleResume(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public static requestAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    const-string v0, "MiCloudResolver"

    .line 9
    const-string v1, "requestAllSyncs"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2b

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_15

    .line 40
    invoke-static {p0, p1, v1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 43
    goto :goto_15

    .line 44
    :cond_2b
    return-void
.end method

.method public static requestForceSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "requestForceSync: authority: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MiCloudResolver"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3e

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v2, "requestSync: authority: "

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "is paused. request sync fail"

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3e
    new-instance v0, Landroid/os/Bundle;

    .line 65
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v1, "force"

    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v1, "micloud_ignore_temperature"

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const-string v1, "micloud_ignore_battery_low"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils;->isNetworkMetered(Landroid/content/Context;)Z

    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_5e

    .line 90
    const-string p0, "micloud_ignore_wifi_settings"

    .line 92
    invoke-virtual {v0, p0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    :cond_5e
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public static requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "requestSync: authority: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v2, "MiCloudResolver"

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_3c

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "is paused. request sync fail"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3c
    new-instance p0, Landroid/os/Bundle;

    .line 63
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-static {p1, p2, p0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public static resumeAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    const-string v0, "MiCloudResolver"

    .line 9
    const-string v1, "resumeAllSyncs"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v0, "_all"

    .line 16
    const-wide/16 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 21
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->getAuthorityList()Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2c

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/String;

    .line 41
    invoke-static {p0, v3, v1, v2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestAllSyncs(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 48
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToScheduleResume(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public static resumeSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertContext(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAccount(Landroid/accounts/Account;)V

    .line 7
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->assertAuthority(Ljava/lang/String;)V

    .line 10
    const-string v0, "resumeSync: authority: "

    .line 12
    const-string v1, "MiCloudResolver"

    .line 14
    invoke-static {v0, p2, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0, p2}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->insertPauseExceptAuthority(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    invoke-static {p0, p2, v0, v1}, Lcom/xiaomi/micloudsdk/sync/utils/SyncContentUtils;->savePauseTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 25
    invoke-static {p0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->requestSync(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->tryToScheduleResume(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private static sendCancelCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/SyncCommandConstant;->SUPPORT_COMMAND_PKGS:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    const-string v2, "MiCloudResolver"

    .line 15
    if-eqz v1, :cond_2a

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v0, "sendCancelCommand: "

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, " doesn\'t match pkgName"

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance p1, Landroid/content/Intent;

    .line 45
    const-string v1, "com.xiaomi.micloud.action.SYNC_COMMAND"

    .line 47
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "key_command"

    .line 52
    const-string v3, "value_command_cancel_sync"

    .line 54
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_50

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_50

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    goto :goto_5a

    .line 81
    :cond_50
    :try_start_50
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_53} :catch_54

    .line 84
    goto :goto_5a

    .line 85
    :catch_54
    move-exception p0

    .line 86
    const-string p1, "sendCancelCommandFailed: "

    .line 88
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_5a
    return-void
.end method

.method private static tryToScheduleResume(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.action.SYNC_RESUME"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.miui.cloudservice"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "extra_operation"

    .line 15
    const-string v2, "alarm"

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x20

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_23

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    :goto_26
    return-void
.end method
