.class public Lmiui/cloud/sync/MiCloudStatusInfo;
.super Ljava/lang/Object;
.source "MiCloudStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;,
        Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCloudStatusInfo"


# instance fields
.field private mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

.field private mUserId:Ljava/lang/String;

.field private mVipEnable:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mUserId:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static fromProviderOrNull(Landroid/content/Context;Landroid/accounts/Account;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 9

    .line 1
    const-string v0, "content://com.miui.micloud/status_info"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_4c

    .line 21
    :try_start_14
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 24
    const-string v0, "column_status_info"

    .line 26
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "column_status_info_user_id"

    .line 36
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    move-result v1

    .line 40
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4c

    .line 50
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 52
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4c

    .line 58
    new-instance v1, Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 60
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 62
    invoke-direct {v1, p1}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_47

    .line 68
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 71
    return-object v1

    .line 72
    :catchall_47
    move-exception p1

    .line 73
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 76
    throw p1

    .line 77
    :cond_4c
    const/4 p1, 0x0

    .line 78
    if-eqz p0, :cond_52

    .line 80
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_52
    return-object p1
.end method

.method public static fromUserData(Landroid/content/Context;)Lmiui/cloud/sync/MiCloudStatusInfo;
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    const-string v1, "extra_micloud_status_info_quota"

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lmiui/cloud/sync/MiCloudStatusInfo;

    .line 21
    iget-object v4, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 23
    invoke-direct {v3, v4}, Lmiui/cloud/sync/MiCloudStatusInfo;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3, v2}, Lmiui/cloud/sync/MiCloudStatusInfo;->parseQuotaString(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Lmiui/cloud/sync/MiCloudStatusInfo;->getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_28

    .line 35
    invoke-virtual {v2}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->getWarn()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_34

    .line 41
    :cond_28
    const-string v2, "MiCloudStatusInfo"

    .line 43
    const-string v4, "deserialize failed"

    .line 45
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, ""

    .line 50
    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_34
    return-object v3
.end method

.method private mapToItemInfo(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;
    .registers 10

    .line 1
    const-string v0, "localized_name"

    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/String;

    .line 9
    if-eqz v1, :cond_d

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const-string v0, ""

    .line 16
    :goto_f
    move-object v4, v0

    .line 17
    const-string v0, "used"

    .line 19
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    instance-of v0, p2, Ljava/lang/Integer;

    .line 25
    if-eqz v0, :cond_22

    .line 27
    check-cast p2, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p2

    .line 33
    int-to-long v0, p2

    .line 34
    goto :goto_2f

    .line 35
    :cond_22
    instance-of v0, p2, Ljava/lang/Long;

    .line 37
    if-eqz v0, :cond_2d

    .line 39
    check-cast p2, Ljava/lang/Long;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 44
    move-result-wide v0

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    const-wide/16 v0, 0x0

    .line 48
    :goto_2f
    move-wide v5, v0

    .line 49
    new-instance p2, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 51
    move-object v1, p2

    .line 52
    move-object v2, p0

    .line 53
    move-object v3, p1

    .line 54
    invoke-direct/range {v1 .. v6}, Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    return-object p2
.end method

.method private mapToQuotaInfo(Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 21

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string v1, "total"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Ljava/lang/Long;

    .line 11
    const-wide/16 v3, 0x0

    .line 13
    if-eqz v2, :cond_16

    .line 15
    check-cast v1, Ljava/lang/Long;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 20
    move-result-wide v1

    .line 21
    move-wide v7, v1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move-wide v7, v3

    .line 24
    :goto_17
    const-string v1, "used"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    instance-of v2, v1, Ljava/lang/Integer;

    .line 32
    if-eqz v2, :cond_2a

    .line 34
    check-cast v1, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v1

    .line 40
    int-to-long v1, v1

    .line 41
    :goto_28
    move-wide v9, v1

    .line 42
    goto :goto_36

    .line 43
    :cond_2a
    instance-of v2, v1, Ljava/lang/Long;

    .line 45
    if-eqz v2, :cond_35

    .line 47
    check-cast v1, Ljava/lang/Long;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 52
    move-result-wide v1

    .line 53
    goto :goto_28

    .line 54
    :cond_35
    move-wide v9, v3

    .line 55
    :goto_36
    const-string v1, "warn"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    instance-of v2, v1, Ljava/lang/String;

    .line 63
    const-string v5, ""

    .line 65
    if-eqz v2, :cond_46

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 69
    move-object v11, v1

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move-object v11, v5

    .line 72
    :goto_47
    const-string v1, "yearlyPackageType"

    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    instance-of v2, v1, Ljava/lang/String;

    .line 80
    if-eqz v2, :cond_55

    .line 82
    check-cast v1, Ljava/lang/String;

    .line 84
    move-object v12, v1

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    move-object v12, v5

    .line 87
    :goto_56
    const-string v1, "yearlyPackageSize"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    instance-of v2, v1, Ljava/lang/Long;

    .line 95
    if-eqz v2, :cond_68

    .line 97
    check-cast v1, Ljava/lang/Long;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 102
    move-result-wide v1

    .line 103
    move-wide v13, v1

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move-wide v13, v3

    .line 106
    :goto_69
    const-string v1, "yearlyPackageCreateTime"

    .line 108
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    instance-of v2, v1, Ljava/lang/Long;

    .line 114
    if-eqz v2, :cond_7b

    .line 116
    check-cast v1, Ljava/lang/Long;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 121
    move-result-wide v1

    .line 122
    move-wide v15, v1

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    move-wide v15, v3

    .line 125
    :goto_7c
    const-string v1, "yearlyPackageExpireTime"

    .line 127
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    instance-of v2, v1, Ljava/lang/Long;

    .line 133
    if-eqz v2, :cond_8c

    .line 135
    check-cast v1, Ljava/lang/Long;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 140
    move-result-wide v3

    .line 141
    :cond_8c
    move-wide/from16 v17, v3

    .line 143
    new-instance v1, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 145
    move-object v5, v1

    .line 146
    move-object/from16 v6, p0

    .line 148
    invoke-direct/range {v5 .. v18}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;-><init>(Lmiui/cloud/sync/MiCloudStatusInfo;JJLjava/lang/String;Ljava/lang/String;JJJ)V

    .line 151
    const-string v2, "items"

    .line 153
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    instance-of v2, v0, Ljava/util/Map;

    .line 159
    if-eqz v2, :cond_c6

    .line 161
    check-cast v0, Ljava/util/Map;

    .line 163
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 166
    move-result-object v2

    .line 167
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v2

    .line 171
    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_c6

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/lang/String;

    .line 183
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Ljava/util/Map;

    .line 189
    move-object/from16 v5, p0

    .line 191
    invoke-direct {v5, v3, v4}, Lmiui/cloud/sync/MiCloudStatusInfo;->mapToItemInfo(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;

    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;->addItemInfo(Lmiui/cloud/sync/MiCloudStatusInfo$ItemInfo;)V

    .line 198
    goto :goto_aa

    .line 199
    :cond_c6
    move-object/from16 v5, p0

    .line 201
    return-object v1
.end method


# virtual methods
.method public getQuotaInfo()Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 3
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mUserId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isVIPAvailable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mVipEnable:Z

    .line 3
    return v0
.end method

.method public parseMap(Ljava/util/Map;)V
    .registers 4

    .line 1
    const-string v0, "quota"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/util/Map;

    .line 9
    if-eqz v1, :cond_12

    .line 11
    check-cast v0, Ljava/util/Map;

    .line 13
    invoke-direct {p0, v0}, Lmiui/cloud/sync/MiCloudStatusInfo;->mapToQuotaInfo(Ljava/util/Map;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 19
    :cond_12
    const-string v0, "VIPAvailable"

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 27
    if-eqz v0, :cond_24

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p1

    .line 35
    iput-boolean p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mVipEnable:Z

    .line 37
    :cond_24
    return-void
.end method

.method public parseQuotaString(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "MiCloudStatusInfo"

    .line 8
    if-eqz v0, :cond_11

    .line 10
    const-string p1, "parseQuotaString() quota is empty."

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iput-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 17
    return-void

    .line 18
    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    .line 20
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->getQuotaInfo(Lmiui/cloud/sync/MiCloudStatusInfo;Lorg/json/JSONObject;)Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_24

    .line 30
    :catch_1d
    const-string p1, "catch JSONException in parseQuotaString()"

    .line 32
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object v1, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 37
    :goto_24
    return-void
.end method

.method public parseToQuotaInfo()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/MiCloudStatusInfo;->mQuotaInfo:Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;

    .line 3
    if-nez v0, :cond_e

    .line 5
    const-string v0, "MiCloudStatusInfo"

    .line 7
    const-string v1, "parseToQuotaInfo() mQuotaInfo is null."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string v0, ""

    .line 14
    return-object v0

    .line 15
    :cond_e
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/cloudinfo/utils/CloudInfoUtils;->toJSONObject(Lmiui/cloud/sync/MiCloudStatusInfo$QuotaInfo;)Lorg/json/JSONObject;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
