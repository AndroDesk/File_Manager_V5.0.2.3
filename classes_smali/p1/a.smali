.class public Lp1/a;
.super Ljava/lang/Object;
.source "DownloadRequestResult.java"

# interfaces
.implements Lp1/c;
.implements Lp1/f;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DownloadRequestResult"


# instance fields
.field private blocks:[Lp1/c$a;

.field private secure_key:[B

.field private final stat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "stat"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const-string v0, "secure_key"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b;->G(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lp1/a;->secure_key:[B

    const-string v0, "blocks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_91

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lp1/c$a;

    iput-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "sha1"

    invoke-static {v2, v3}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "size"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "urls"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_84

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v0

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    aput-object v8, v6, v7

    move v7, v9

    goto :goto_72

    :cond_84
    new-instance v2, Lp1/c$a;

    invoke-direct {v2, v3, v6, v4, v5}, Lp1/c$a;-><init>(Ljava/lang/String;[Ljava/lang/String;J)V

    iget-object v3, p0, Lp1/a;->blocks:[Lp1/c$a;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_38

    :cond_91
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lp1/a;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/h;->c(Ljava/io/StringReader;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_25
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    :try_start_c
    new-instance v0, Lp1/a;

    invoke-direct {v0, p1}, Lp1/a;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_1d
    .catchall {:try_start_c .. :try_end_11} :catchall_46

    if-eqz p1, :cond_1c

    instance-of v1, p1, Ls1/f;

    if-eqz v1, :cond_1c

    check-cast p1, Ls1/f;

    invoke-interface {p1}, Ls1/f;->recycle()V

    :cond_1c
    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_29

    :catch_1f
    move-exception v0

    goto :goto_39

    :catchall_21
    move-exception p1

    goto :goto_4a

    :catch_23
    move-exception p1

    goto :goto_36

    :catch_25
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_29
    :try_start_29
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    const v2, 0x7a509

    const-string v3, "kss is not json"

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v1

    :goto_36
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_39
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    const v2, 0x7a50c

    const-string v3, "kss is null"

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v1
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :goto_4a
    if-eqz v0, :cond_55

    instance-of v1, v0, Ls1/f;

    if-eqz v1, :cond_55

    check-cast v0, Ls1/f;

    invoke-interface {v0}, Ls1/f;->recycle()V

    :cond_55
    throw p1
.end method

.method public getBlock(I)Lp1/c$a;
    .registers 3

    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getBlockCount()I
    .registers 2

    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public getBlockUrls(J)[Ljava/lang/String;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_26

    iget-object v2, p0, Lp1/a;->blocks:[Lp1/c$a;

    if-nez v2, :cond_c

    goto :goto_26

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v4, p0, Lp1/a;->blocks:[Lp1/c$a;

    array-length v5, v4

    if-ge v2, v5, :cond_26

    aget-object v4, v4, v2

    iget-wide v5, v4, Lp1/c$a;->c:J

    add-long/2addr v5, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    cmp-long v0, p1, v5

    if-gez v0, :cond_22

    iget-object v3, v4, Lp1/c$a;->b:[Ljava/lang/String;

    goto :goto_26

    :cond_22
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_d

    :cond_26
    :goto_26
    return-object v3
.end method

.method public getHash()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp1/a;->blocks:[Lp1/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    array-length v1, v1

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp1/a;->getTotalSize()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp1/a;->blocks:[Lp1/c$a;

    if-eqz v3, :cond_35

    array-length v4, v3

    :goto_29
    if-ge v2, v4, :cond_35

    aget-object v5, v3, v2

    iget-object v5, v5, Lp1/c$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_3d
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, La/b;->l([B)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_4c

    goto :goto_55

    :catch_4c
    move-exception v1

    const-string v2, "Encode"

    const-string v3, "MD5Encode failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTime()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSecureKey()[B
    .registers 2

    iget-object v0, p0, Lp1/a;->secure_key:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 3

    iget-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0
.end method

.method public getTotalSize()J
    .registers 8

    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    :cond_7
    array-length v3, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_13

    aget-object v5, v0, v4

    iget-wide v5, v5, Lp1/c$a;->c:J

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_13
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "stat"

    iget-object v2, p0, Lp1/a;->stat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "secure_key"

    iget-object v2, p0, Lp1/a;->secure_key:[B

    invoke-static {v2}, La/b;->l([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lp1/a;->blocks:[Lp1/c$a;

    if-eqz v2, :cond_59

    array-length v3, v2

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_59

    aget-object v5, v2, v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "sha1"

    iget-object v8, v5, Lp1/c$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    iget-wide v8, v5, Lp1/c$a;->c:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v7, v5, Lp1/c$a;->b:[Ljava/lang/String;

    if-eqz v7, :cond_49

    new-instance v7, Lorg/json/JSONArray;

    iget-object v5, v5, Lp1/c$a;->b:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_4e

    :cond_49
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    :goto_4e
    const-string v5, "urls"

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_59
    const-string v2, "blocks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_67

    :catch_5f
    const-string v0, "DownloadRequestResult"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_67
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
