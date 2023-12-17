.class public Lcom/xiaomi/micloudsdk/request/utils/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    }
.end annotation


# static fields
.field private static final HEADER_PARAM_REQUEST_APK_VERSION:Ljava/lang/String; = "apk-version"

.field private static final HEADER_PARAM_REQUEST_APK_VERSION_CODE:Ljava/lang/String; = "apk-version-code"

.field private static final MAX_FILTER_TAG_COUNT:I = 0x64

.field private static final PARAM_REQUEST_APK_VERSION:Ljava/lang/String; = "_apkversion"

.field private static final PARAM_REQUEST_APK_VERSION_CODE:Ljava/lang/String; = "_apkversioncode"

.field private static final PARAM_SYNC_FILTER_TAG:Ljava/lang/String; = "filterTag"

.field private static final PARAM_SYNC_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG:Ljava/lang/String; = "Request"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addApkVersionWithinParams(Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "_apkversioncode"

    .line 3
    const-string v1, "_apkversion"

    .line 5
    const-string v2, "apk-version-code"

    .line 7
    const-string v3, "apk-version"

    .line 9
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    :try_start_10
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v4

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    move-result-object v4

    .line 26
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 28
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Ljava/lang/CharSequence;

    .line 40
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_30

    .line 46
    invoke-interface {p0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_30
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/CharSequence;

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3f

    .line 61
    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/CharSequence;

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_4e

    .line 76
    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_4e
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Ljava/lang/CharSequence;

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_75

    .line 91
    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_5d} :catch_5e

    .line 94
    goto :goto_75

    .line 95
    :catch_5e
    move-exception p0

    .line 96
    const-string p1, " get apk version error —— Exception: "

    .line 98
    invoke-static {v5, p1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    const-string p1, "Request"

    .line 115
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_75
    :goto_75
    return-void
.end method

.method public static addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 8
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :cond_41
    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "filterTag"

    if-eqz v8, :cond_d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 11
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v10, v10, p4

    if-gtz v10, :cond_58

    goto :goto_41

    :cond_58
    const/16 v10, 0x64

    const-string v11, ","

    if-ge v7, v10, :cond_77

    .line 12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_67

    .line 13
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_67
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    .line 15
    rem-int/lit8 v8, v7, 0xa

    if-eqz v8, :cond_77

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_77

    goto :goto_41

    .line 16
    :cond_77
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_84

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_96

    .line 18
    :cond_84
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 19
    :goto_96
    invoke-static {p0, v1, v12}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v12, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {v12, p0, v2, v1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "signature"

    invoke-direct {v13, v14, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {p0, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    .line 25
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v8, 0x400

    if-lt v12, v8, :cond_c3

    goto :goto_d4

    .line 27
    :cond_c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_cc

    .line 28
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_cc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lt v7, v10, :cond_41

    .line 31
    :cond_d4
    :goto_d4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "Micloud"

    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string v1, "The filterTag is :"

    .line 33
    invoke-static {v1, v0, v2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    move-object/from16 v1, p1

    .line 34
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v0

    .line 2
    iget-object v3, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/micloudsdk/request/utils/Request;->addFilterTagsToParams(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;J)V

    return-void
.end method

.method private static checkHostLocation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_RELOCATION_BASE:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_e

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->updateRequestHost(Ljava/lang/String;Z)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    const-string v1, "relocation url "

    .line 17
    const-string v2, "Request"

    .line 19
    invoke-static {v1, v0, v2}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_15
    return-object p0
.end method

.method private static encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/utils/CryptCoder;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_7

    .line 3
    new-instance p2, Ljava/util/HashMap;

    .line 5
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_7
    if-eqz p1, :cond_25

    .line 10
    const-string v0, "_nonce"

    .line 12
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_25

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 31
    invoke-direct {v2, v0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_2e

    .line 38
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 43
    move-result p1

    .line 44
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_2e
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_71

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Ljava/lang/String;

    .line 79
    const-string v2, "_"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_68

    .line 87
    if-eqz p2, :cond_59

    .line 89
    goto :goto_5b

    .line 90
    :cond_59
    const-string p2, ""

    .line 92
    :goto_5b
    invoke-interface {p0, p2}, Lcom/xiaomi/micloudsdk/utils/CryptCoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 98
    invoke-direct {v2, v0, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_36

    .line 105
    :cond_68
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 107
    invoke-direct {v2, v0, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_36

    .line 114
    :cond_71
    return-object v1
.end method

.method private static execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v2, "Micloud"

    .line 5
    if-nez p2, :cond_d

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    move-object v3, v0

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    move-object/from16 v3, p2

    .line 16
    :goto_f
    if-nez p3, :cond_18

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    move-object v4, v0

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    move-object/from16 v4, p3

    .line 27
    :goto_1a
    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/request/utils/Request;->addApkVersionWithinParams(Ljava/util/Map;Ljava/util/Map;)V

    .line 30
    invoke-static {v3, v4}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->addParam(Ljava/util/Map;Ljava/util/Map;)V

    .line 33
    :try_start_20
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->checkHostLocation(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const-string v7, ""

    .line 39
    invoke-static {v6}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->isV4Url(Ljava/lang/String;)Z

    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_2b
    const/4 v0, 0x2

    .line 45
    if-ge v9, v0, :cond_1c3

    .line 47
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getAuthTokenOrThrow()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/data/IAuthToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;

    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v6}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->getCryptCoder(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    .line 58
    move-result-object v11

    .line 59
    if-eqz v8, :cond_41

    .line 61
    invoke-static {}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce()Ljava/lang/String;

    .line 64
    move-result-object v12
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_40} :catch_1d3

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    const/4 v12, 0x0

    .line 67
    :goto_42
    :try_start_42
    invoke-static {v11, v12, v4}, Lcom/xiaomi/micloudsdk/request/utils/Request;->encodeParameters(Lcom/xiaomi/micloudsdk/utils/CryptCoder;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 70
    move-result-object v12
    :try_end_46
    .catch Lcom/xiaomi/micloudsdk/exception/CipherException; {:try_start_42 .. :try_end_46} :catch_19a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_1d3

    .line 71
    :try_start_46
    invoke-interface {v0, v12}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->addParams(Ljava/util/ArrayList;)V

    .line 74
    invoke-interface {v0, v1, v6, v12}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->signParams(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 77
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 80
    move-result-object v13

    .line 81
    invoke-interface {v13}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    .line 84
    move-result-object v13

    .line 85
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->getServiceToken()Ljava/lang/String;

    .line 88
    move-result-object v14

    .line 89
    move-object/from16 v15, p4

    .line 91
    invoke-static {v13, v14, v15}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;

    .line 94
    move-result-object v13

    .line 95
    new-instance v14, Ljava/util/ArrayList;

    .line 97
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 103
    move-result-object v16

    .line 104
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v16

    .line 108
    :goto_6b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v17

    .line 112
    if-eqz v17, :cond_94

    .line 114
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v17

    .line 118
    check-cast v17, Ljava/util/Map$Entry;

    .line 120
    new-instance v10, Lorg/apache/http/message/BasicHeader;

    .line 122
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    move-result-object v18

    .line 126
    move-object/from16 v5, v18

    .line 128
    check-cast v5, Ljava/lang/String;

    .line 130
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    move-result-object v17

    .line 134
    move-object/from16 v18, v3

    .line 136
    move-object/from16 v3, v17

    .line 138
    check-cast v3, Ljava/lang/String;

    .line 140
    invoke-direct {v10, v5, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v3, v18

    .line 148
    goto :goto_6b

    .line 149
    :cond_94
    move-object/from16 v18, v3

    .line 151
    invoke-interface {v0, v14}, Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;->addAdditionalHeaders(Ljava/util/List;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_99} :catch_1d3

    .line 154
    :try_start_99
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_ab

    .line 162
    invoke-static {v6, v12}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0, v13, v14, v11}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    .line 169
    move-result-object v7

    .line 170
    goto/16 :goto_1c3

    .line 172
    :cond_ab
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_c0

    .line 180
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 182
    const-string v3, "UTF-8"

    .line 184
    invoke-direct {v0, v12, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 187
    invoke-static {v6, v0, v13, v14, v11}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    .line 190
    move-result-object v7

    .line 191
    goto/16 :goto_1c3

    .line 193
    :cond_c0
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_10b

    .line 201
    new-instance v0, Lorg/json/JSONObject;

    .line 203
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_cd
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_99 .. :try_end_cd} :catch_113
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_cd} :catch_1d3

    .line 206
    const/4 v3, 0x0

    .line 207
    :goto_ce
    :try_start_ce
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 210
    move-result v5

    .line 211
    if-ge v3, v5, :cond_ee

    .line 213
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Lorg/apache/http/NameValuePair;

    .line 219
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v10

    .line 227
    check-cast v10, Lorg/apache/http/NameValuePair;

    .line 229
    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 232
    move-result-object v10

    .line 233
    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_ce .. :try_end_eb} :catch_ff
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_ce .. :try_end_eb} :catch_113
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_eb} :catch_1d3

    .line 236
    add-int/lit8 v3, v3, 0x1

    .line 238
    goto :goto_ce

    .line 239
    :cond_ee
    :try_start_ee
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    const-string v5, "utf-8"

    .line 247
    invoke-direct {v3, v0, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {v6, v3, v13, v14, v11}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpPostJSONRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Ljava/util/List;Lcom/xiaomi/micloudsdk/utils/CryptCoder;)Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 254
    goto/16 :goto_1c3

    .line 256
    :catch_ff
    move-exception v0

    .line 257
    new-instance v3, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-direct {v3, v5, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 267
    throw v3

    .line 268
    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 270
    const-string v3, "http method not supported."

    .line 272
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    throw v0
    :try_end_113
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_ee .. :try_end_113} :catch_113
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_113} :catch_1d3

    .line 276
    :catch_113
    move-exception v0

    .line 277
    :try_start_114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string v5, "CloudServer Exception: "

    .line 284
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 290
    move-result-object v5

    .line 291
    invoke-static {v5}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v3

    .line 302
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 308
    move-result v3
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_134} :catch_1d3

    .line 309
    const/16 v5, 0x191

    .line 311
    if-ne v3, v5, :cond_192

    .line 313
    const-string v3, "CloudServer 401 Exception: retry="

    .line 315
    if-nez v9, :cond_16b

    .line 317
    :try_start_13c
    new-instance v5, Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 332
    invoke-static {v3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 349
    move-result-object v3

    .line 350
    invoke-interface {v3}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->invalidateAuthToken()V

    .line 353
    iget-wide v10, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->serverDate:J

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 358
    move-result-wide v12

    .line 359
    sub-long/2addr v10, v12

    .line 360
    invoke-static {v10, v11}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->setServerDateOffset(J)V

    .line 363
    goto :goto_16e

    .line 364
    :cond_16b
    const/4 v5, 0x1

    .line 365
    if-eq v9, v5, :cond_174

    .line 367
    :goto_16e
    add-int/lit8 v9, v9, 0x1

    .line 369
    move-object/from16 v3, v18

    .line 371
    goto/16 :goto_2b

    .line 373
    :cond_174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 387
    move-result-object v3

    .line 388
    invoke-static {v3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v1

    .line 399
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    throw v0

    .line 403
    :cond_192
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 406
    move-result-object v1

    .line 407
    invoke-static {v1, v0}, Lw3/k;->b(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    .line 410
    throw v0

    .line 411
    :catch_19a
    move-exception v0

    .line 412
    move-object v1, v0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    const-string v3, "CipherException: "

    .line 420
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 426
    move-result-object v3

    .line 427
    invoke-static {v3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v0

    .line 438
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 443
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 446
    move-result-object v1

    .line 447
    const/4 v2, 0x0

    .line 448
    invoke-direct {v0, v2, v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 451
    throw v0

    .line 452
    :cond_1c3
    :goto_1c3
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 455
    move-result-object v0

    .line 456
    invoke-static {v0, v7}, Lw3/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 462
    move-result-object v0

    .line 463
    const/4 v1, 0x1

    .line 464
    invoke-static {v0, v1}, Lw3/d;->a(Landroid/content/Context;Z)V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_1d2} :catch_1d3

    .line 467
    return-object v7

    .line 468
    :catch_1d3
    move-exception v0

    .line 469
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 472
    move-result-object v1

    .line 473
    const/4 v2, 0x0

    .line 474
    invoke-static {v1, v2}, Lw3/d;->a(Landroid/content/Context;Z)V

    .line 477
    throw v0
.end method

.method private static getAuthTokenOrThrow()Lcom/xiaomi/micloudsdk/data/IAuthToken;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Lmicloud/compat/independent/request/QueryAuthTokenException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    move-exception v0

    .line 11
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "queryAuthToken() returned null, errMsg = "

    .line 16
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lmicloud/compat/independent/request/QueryAuthTokenException;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 34
    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static getCookies(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-eqz p1, :cond_f

    .line 8
    const-string v1, "serviceToken="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_f
    if-eqz p0, :cond_22

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1a

    .line 24
    const-string p1, "cUserId="

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const-string p1, "; cUserId="

    .line 29
    :goto_1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_22
    if-eqz p2, :cond_82

    .line 37
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 40
    move-result p0

    .line 41
    if-lez p0, :cond_82

    .line 43
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 51
    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_82

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Ljava/lang/String;

    .line 69
    const-string v1, "cUserId"

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_32

    .line 77
    const-string v1, "userId"

    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_32

    .line 85
    const-string v1, "serviceToken"

    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_32

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_32

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_6b

    .line 105
    const-string v1, ""

    .line 107
    goto :goto_6d

    .line 108
    :cond_6b
    const-string v1, "; "

    .line 110
    :goto_6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p2, "="

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    goto :goto_32

    .line 131
    :cond_82
    new-instance p0, Lorg/apache/http/message/BasicHeader;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    const-string p2, "Cookie"

    .line 139
    invoke-direct {p0, p2, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p0
.end method

.method public static getRegion()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRegion()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation;->toRequest_RequestEnv(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->init(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static queryAuthToken()Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;->queryAuthToken()Lcom/xiaomi/micloudsdk/data/IAuthToken;

    .line 9
    move-result-object v1
    :try_end_9
    .catch Lmicloud/compat/independent/request/QueryAuthTokenException; {:try_start_1 .. :try_end_9} :catch_18

    .line 10
    instance-of v2, v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 12
    if-eqz v2, :cond_10

    .line 14
    check-cast v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 16
    return-object v1

    .line 17
    :cond_10
    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 19
    const-string v2, "token instance is not ExtendedAuthToken"

    .line 21
    invoke-direct {v1, v0, v2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 24
    throw v1

    .line 25
    :catch_18
    move-exception v1

    .line 26
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 28
    const-string v3, "queryAuthToken() returned null, errMsg = "

    .line 30
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1}, Lmicloud/compat/independent/request/QueryAuthTokenException;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v2, v0, v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    .line 48
    throw v2
.end method

.method public static requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static requestServer(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v0, "requestServer error:"

    const-string v1, "Request"

    const-wide/32 v2, 0x493e0

    .line 2
    :try_start_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_10} :catch_107
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_10} :catch_ea
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7 .. :try_end_10} :catch_cd
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_10} :catch_b0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_83
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_7 .. :try_end_10} :catch_2e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p0

    .line 4
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2e
    move-exception p0

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    move-result p1

    const/16 p2, 0x191

    if-eq p1, p2, :cond_7d

    const/16 p2, 0x193

    if-eq p1, p2, :cond_7d

    const/16 p2, 0x1f4

    if-eq p1, p2, :cond_73

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_66

    .line 12
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13
    :cond_66
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    int-to-long p3, p0

    invoke-direct {p1, p2, p3, p4}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 14
    :cond_73
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2, v3}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 15
    :cond_7d
    new-instance p0, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    throw p0

    :catch_83
    move-exception p0

    .line 16
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 17
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p0}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 19
    new-instance p1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2, v3}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw p1

    .line 20
    :cond_aa
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_b0
    move-exception p0

    .line 21
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_cd
    move-exception p0

    .line 24
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 25
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_ea
    move-exception p0

    .line 27
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 28
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_107
    move-exception p0

    .line 30
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 31
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {p1, p0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static secureGet(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget-object p0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 p1, 0x0

    invoke-static {p2, p0, p1, p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static secureGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static secureGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static securePost(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget-object p0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 p1, 0x0

    invoke-static {p2, p0, p1, p3, p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static securePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static securePost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static securePostJSON(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->POST_JSON:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, v1, p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->execute(Ljava/lang/String;Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static setRegion(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->setRegion(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static setRequestEnv(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestEnvDelegation;->toRequestContext_RequestEnv(Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;)Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->setRequestEnv(Lcom/xiaomi/micloudsdk/request/utils/RequestContext$RequestEnv;)V

    .line 8
    return-void
.end method
