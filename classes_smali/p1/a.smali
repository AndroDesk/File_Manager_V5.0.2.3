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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "stat"

    .line 6
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    .line 12
    const-string v1, "OK"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    const-string v0, "secure_key"

    .line 23
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, La/b;->G(Ljava/lang/String;)[B

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lp1/a;->secure_key:[B

    .line 33
    const-string v0, "blocks"

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/Collection;

    .line 41
    if-eqz p1, :cond_91

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 46
    move-result v0

    .line 47
    new-array v0, v0, [Lp1/c$a;

    .line 49
    iput-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    const/4 v0, 0x0

    .line 56
    move v1, v0

    .line 57
    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_91

    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/Map;

    .line 69
    const-string v3, "sha1"

    .line 71
    invoke-static {v2, v3}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    const-string v4, "size"

    .line 77
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 92
    move-result-wide v4

    .line 93
    const/4 v6, 0x0

    .line 94
    const-string v7, "urls"

    .line 96
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/util/Collection;

    .line 102
    if-eqz v2, :cond_84

    .line 104
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 107
    move-result v6

    .line 108
    new-array v6, v6, [Ljava/lang/String;

    .line 110
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v2

    .line 114
    move v7, v0

    .line 115
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_84

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v8

    .line 125
    check-cast v8, Ljava/lang/String;

    .line 127
    add-int/lit8 v9, v7, 0x1

    .line 129
    aput-object v8, v6, v7

    .line 131
    move v7, v9

    .line 132
    goto :goto_72

    .line 133
    :cond_84
    new-instance v2, Lp1/c$a;

    .line 135
    invoke-direct {v2, v3, v6, v4, v5}, Lp1/c$a;-><init>(Ljava/lang/String;[Ljava/lang/String;J)V

    .line 138
    iget-object v3, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 140
    add-int/lit8 v4, v1, 0x1

    .line 142
    aput-object v2, v3, v1

    .line 144
    move v1, v4

    .line 145
    goto :goto_38

    .line 146
    :cond_91
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lp1/a;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    .line 4
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Ls1/h;->c(Ljava/io/StringReader;)Ljava/io/Serializable;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_25
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    .line 13
    :try_start_c
    new-instance v0, Lp1/a;

    .line 15
    invoke-direct {v0, p1}, Lp1/a;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_1d
    .catchall {:try_start_c .. :try_end_11} :catchall_46

    .line 18
    if-eqz p1, :cond_1c

    .line 20
    instance-of v1, p1, Ls1/f;

    .line 22
    if-eqz v1, :cond_1c

    .line 24
    check-cast p1, Ls1/f;

    .line 26
    invoke-interface {p1}, Ls1/f;->recycle()V

    .line 29
    :cond_1c
    return-object v0

    .line 30
    :catch_1d
    move-exception v0

    .line 31
    goto :goto_29

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    goto :goto_39

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    goto :goto_4a

    .line 36
    :catch_23
    move-exception p1

    .line 37
    goto :goto_36

    .line 38
    :catch_25
    move-exception p1

    .line 39
    move-object v5, v0

    .line 40
    move-object v0, p1

    .line 41
    move-object p1, v5

    .line 42
    :goto_29
    :try_start_29
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    .line 44
    const v2, 0x7a509

    .line 47
    const-string v3, "kss is not json"

    .line 49
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 51
    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 54
    throw v1

    .line 55
    :goto_36
    move-object v5, v0

    .line 56
    move-object v0, p1

    .line 57
    move-object p1, v5

    .line 58
    :goto_39
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    .line 60
    const v2, 0x7a50c

    .line 63
    const-string v3, "kss is null"

    .line 65
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 67
    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 70
    throw v1
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_46

    .line 71
    :catchall_46
    move-exception v0

    .line 72
    move-object v5, v0

    .line 73
    move-object v0, p1

    .line 74
    move-object p1, v5

    .line 75
    :goto_4a
    if-eqz v0, :cond_55

    .line 77
    instance-of v1, v0, Ls1/f;

    .line 79
    if-eqz v1, :cond_55

    .line 81
    check-cast v0, Ls1/f;

    .line 83
    invoke-interface {v0}, Ls1/f;->recycle()V

    .line 86
    :cond_55
    throw p1
.end method

.method public getBlock(I)Lp1/c$a;
    .registers 3

    .line 1
    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 3
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public getBlockCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    :goto_7
    return v0
.end method

.method public getBlockUrls(J)[Ljava/lang/String;
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ltz v2, :cond_26

    .line 8
    iget-object v2, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 10
    if-nez v2, :cond_c

    .line 12
    goto :goto_26

    .line 13
    :cond_c
    const/4 v2, 0x0

    .line 14
    :goto_d
    iget-object v4, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 16
    array-length v5, v4

    .line 17
    if-ge v2, v5, :cond_26

    .line 19
    aget-object v4, v4, v2

    .line 21
    iget-wide v5, v4, Lp1/c$a;->c:J

    .line 23
    add-long/2addr v5, v0

    .line 24
    cmp-long v0, p1, v0

    .line 26
    if-ltz v0, :cond_22

    .line 28
    cmp-long v0, p1, v5

    .line 30
    if-gez v0, :cond_22

    .line 32
    iget-object v3, v4, Lp1/c$a;->b:[Ljava/lang/String;

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    move-wide v0, v5

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    :goto_26
    return-object v3
.end method

.method public getHash()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_c

    .line 11
    move v1, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    array-length v1, v1

    .line 14
    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x3a

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lp1/a;->getTotalSize()J

    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    iget-object v3, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 39
    if-eqz v3, :cond_35

    .line 41
    array-length v4, v3

    .line 42
    :goto_29
    if-ge v2, v4, :cond_35

    .line 44
    aget-object v5, v3, v2

    .line 46
    iget-object v5, v5, Lp1/c$a;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_29

    .line 54
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 61
    move-result-object v1

    .line 62
    :try_start_3d
    const-string v2, "MD5"

    .line 64
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, La/b;->l([B)Ljava/lang/String;

    .line 75
    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4b} :catch_4c

    .line 76
    goto :goto_55

    .line 77
    :catch_4c
    move-exception v1

    .line 78
    const-string v2, "Encode"

    .line 80
    const-string v3, "MD5Encode failed."

    .line 82
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    .line 86
    :goto_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModifyTime()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSecureKey()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/a;->secure_key:[B

    .line 3
    return-object v0
.end method

.method public getStatus()I
    .registers 3

    .line 1
    iget-object v0, p0, Lp1/a;->stat:Ljava/lang/String;

    .line 3
    const-string v1, "OK"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, -0x1

    .line 14
    :goto_d
    return v0
.end method

.method public getTotalSize()J
    .registers 8

    .line 1
    iget-object v0, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-wide v1

    .line 8
    :cond_7
    array-length v3, v0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_9
    if-ge v4, v3, :cond_13

    .line 12
    aget-object v5, v0, v4

    .line 14
    iget-wide v5, v5, Lp1/c$a;->c:J

    .line 16
    add-long/2addr v1, v5

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 19
    goto :goto_9

    .line 20
    :cond_13
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "stat"

    .line 8
    iget-object v2, p0, Lp1/a;->stat:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "secure_key"

    .line 15
    iget-object v2, p0, Lp1/a;->secure_key:[B

    .line 17
    invoke-static {v2}, La/b;->l([B)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    new-instance v1, Lorg/json/JSONArray;

    .line 26
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 29
    iget-object v2, p0, Lp1/a;->blocks:[Lp1/c$a;

    .line 31
    if-eqz v2, :cond_59

    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_22
    if-ge v4, v3, :cond_59

    .line 37
    aget-object v5, v2, v4

    .line 39
    new-instance v6, Lorg/json/JSONObject;

    .line 41
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v7, "sha1"

    .line 46
    iget-object v8, v5, Lp1/c$a;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v7, "size"

    .line 53
    iget-wide v8, v5, Lp1/c$a;->c:J

    .line 55
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    iget-object v7, v5, Lp1/c$a;->b:[Ljava/lang/String;

    .line 60
    if-eqz v7, :cond_49

    .line 62
    new-instance v7, Lorg/json/JSONArray;

    .line 64
    iget-object v5, v5, Lp1/c$a;->b:[Ljava/lang/String;

    .line 66
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v7, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 73
    goto :goto_4e

    .line 74
    :cond_49
    new-instance v7, Lorg/json/JSONArray;

    .line 76
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 79
    :goto_4e
    const-string v5, "urls"

    .line 81
    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_22

    .line 90
    :cond_59
    const-string v2, "blocks"

    .line 92
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 95
    goto :goto_67

    .line 96
    :catch_5f
    const-string v0, "DownloadRequestResult"

    .line 98
    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .line 104
    :goto_67
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method
