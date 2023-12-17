.class public Lcom/xiaomi/micloudsdk/utils/SyncStateUtils;
.super Ljava/lang/Object;
.source "SyncStateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllAvailableAuthorities(Landroid/content/Context;Landroid/accounts/Account;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            ")",
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
    if-eqz p0, :cond_3b

    .line 8
    if-nez p1, :cond_a

    .line 10
    goto :goto_3b

    .line 11
    :cond_a
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_10
    if-ge v3, v2, :cond_3b

    .line 19
    aget-object v4, v1, v3

    .line 21
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1b

    .line 27
    goto :goto_38

    .line 28
    :cond_1b
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 30
    iget-object v6, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    .line 32
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_26

    .line 38
    goto :goto_38

    .line 39
    :cond_26
    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object v5

    .line 45
    const/16 v6, 0x80

    .line 47
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_35

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_38
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_10

    .line 60
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static isAllSyncOff(Landroid/accounts/Account;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_4

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_18
    const/4 p0, 0x1

    .line 26
    return p0
.end method
