.class public Lcom/micloud/midrive/infos/CachedFileInfo$Factory;
.super Ljava/lang/Object;
.source "CachedFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/CachedFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "SavedFileInfo Factory"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;JJ)Lcom/micloud/midrive/infos/CachedFileInfo;
    .registers 25

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string v1, "file_id"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_11

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    move-object v7, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move-object v7, v3

    .line 19
    :goto_12
    const-string v1, "name"

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    const-string v1, "path"

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v9

    .line 31
    const-string v1, "sha1"

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v8

    .line 37
    const-string v1, "done_time"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v13

    .line 43
    const-string v1, "cover_url"

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_36

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    :cond_36
    move-object/from16 v17, v3

    .line 57
    new-instance v0, Lcom/micloud/midrive/infos/CachedFileInfo;

    .line 59
    move-object v4, v0

    .line 60
    move-object/from16 v5, p0

    .line 62
    move-object/from16 v10, p2

    .line 64
    move-wide/from16 v11, p3

    .line 66
    move-wide/from16 v15, p5

    .line 68
    invoke-direct/range {v4 .. v17}, Lcom/micloud/midrive/infos/CachedFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_8

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getCurrentAccount()Landroid/accounts/Account;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_14

    .line 15
    new-instance p0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    return-object p0

    .line 21
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 30
    :goto_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4a

    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 42
    new-instance v3, Lorg/json/JSONObject;

    .line 44
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v2, "path"

    .line 49
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const-string v4, "name"

    .line 59
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {p0, v0, p1, v2, v3}, Lcom/micloud/midrive/utils/LocalPathUtils;->getDownloadFilePath(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_1d

    .line 75
    :cond_4a
    return-object v1
.end method
