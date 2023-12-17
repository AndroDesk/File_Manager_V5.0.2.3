.class public Lp1/i;
.super Ljava/lang/Object;
.source "UploadRequestResult.java"

# interfaces
.implements Lp1/e;
.implements Lp1/f;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UploadRequestResult"


# instance fields
.field private blocks:[Lp1/e$a;

.field private final file_meta:Ljava/lang/String;

.field private node_urls:[Ljava/lang/String;

.field private final secure_key:[B


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
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
    const-string v0, "secure_key"

    .line 6
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, La/b;->G(Ljava/lang/String;)[B

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lp1/i;->secure_key:[B

    .line 16
    const-string v0, "file_meta"

    .line 18
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lp1/i;->file_meta:Ljava/lang/String;

    .line 24
    const-string v0, "block_metas"

    .line 26
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Collection;

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz v0, :cond_6a

    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 38
    move-result v2

    .line 39
    new-array v2, v2, [Lp1/e$a;

    .line 41
    iput-object v2, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 47
    move v2, v1

    .line 48
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_6a

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/util/Map;

    .line 60
    const-string v4, "is_existed"

    .line 62
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 70
    invoke-static {v4, v5}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_51

    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move v4, v1

    .line 83
    :goto_52
    if-eqz v4, :cond_57

    .line 85
    const-string v5, "commit_meta"

    .line 87
    goto :goto_59

    .line 88
    :cond_57
    const-string v5, "block_meta"

    .line 90
    :goto_59
    invoke-static {v3, v5}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    new-instance v5, Lp1/e$a;

    .line 96
    invoke-direct {v5, v3, v4}, Lp1/e$a;-><init>(Ljava/lang/String;Z)V

    .line 99
    iget-object v3, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 101
    add-int/lit8 v4, v2, 0x1

    .line 103
    aput-object v5, v3, v2

    .line 105
    move v2, v4

    .line 106
    goto :goto_2f

    .line 107
    :cond_6a
    const-string v0, "node_urls"

    .line 109
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/util/Collection;

    .line 115
    if-eqz p1, :cond_94

    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 120
    move-result v0

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    .line 125
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object p1

    .line 129
    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_94

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    .line 143
    add-int/lit8 v3, v1, 0x1

    .line 145
    aput-object v0, v2, v1

    .line 147
    move v1, v3

    .line 148
    goto :goto_80

    .line 149
    :cond_94
    return-void
.end method

.method public static create(Ljava/lang/String;)Lp1/i;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Ls1/h;->c(Ljava/io/StringReader;)Ljava/io/Serializable;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_25
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    .line 13
    :try_start_c
    new-instance v0, Lp1/i;

    .line 15
    invoke-direct {v0, p0}, Lp1/i;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_1d
    .catchall {:try_start_c .. :try_end_11} :catchall_46

    .line 18
    if-eqz p0, :cond_1c

    .line 20
    instance-of v1, p0, Ls1/f;

    .line 22
    if-eqz v1, :cond_1c

    .line 24
    check-cast p0, Ls1/f;

    .line 26
    invoke-interface {p0}, Ls1/f;->recycle()V

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
    move-exception p0

    .line 35
    goto :goto_4a

    .line 36
    :catch_23
    move-exception p0

    .line 37
    goto :goto_36

    .line 38
    :catch_25
    move-exception p0

    .line 39
    move-object v5, v0

    .line 40
    move-object v0, p0

    .line 41
    move-object p0, v5

    .line 42
    :goto_29
    :try_start_29
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    .line 44
    const v2, 0x7a509

    .line 47
    const-string v3, "kss is not json"

    .line 49
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 51
    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 54
    throw v1

    .line 55
    :goto_36
    move-object v5, v0

    .line 56
    move-object v0, p0

    .line 57
    move-object p0, v5

    .line 58
    :goto_39
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    .line 60
    const v2, 0x7a50c

    .line 63
    const-string v3, "kss is null"

    .line 65
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

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
    move-object v0, p0

    .line 74
    move-object p0, v5

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
    throw p0
.end method


# virtual methods
.method public getBlock(I)Lp1/e$a;
    .registers 4

    .line 1
    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_8

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    aget-object p1, v0, p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    :goto_b
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getBlockCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    :goto_7
    return v0
.end method

.method public getFileMeta()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/i;->file_meta:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNodeUrls()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSecureKey()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lp1/i;->secure_key:[B

    .line 3
    return-object v0
.end method

.method public isCompleted()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    array-length v2, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_9
    if-ge v4, v2, :cond_15

    .line 12
    aget-object v5, v0, v4

    .line 14
    iget-boolean v5, v5, Lp1/e$a;->b:Z

    .line 16
    if-nez v5, :cond_12

    .line 18
    return v3

    .line 19
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 21
    goto :goto_9

    .line 22
    :cond_15
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "secure_key"

    .line 8
    iget-object v2, p0, Lp1/i;->secure_key:[B

    .line 10
    invoke-static {v2}, La/b;->l([B)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "file_meta"

    .line 19
    iget-object v2, p0, Lp1/i;->file_meta:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    .line 26
    if-eqz v1, :cond_27

    .line 28
    new-instance v1, Lorg/json/JSONArray;

    .line 30
    iget-object v2, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    .line 32
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    new-instance v1, Lorg/json/JSONArray;

    .line 42
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 45
    :goto_2c
    const-string v2, "node_urls"

    .line 47
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance v1, Lorg/json/JSONArray;

    .line 52
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 55
    iget-object v2, p0, Lp1/i;->blocks:[Lp1/e$a;

    .line 57
    if-eqz v2, :cond_6b

    .line 59
    array-length v3, v2

    .line 60
    const/4 v4, 0x0

    .line 61
    move v5, v4

    .line 62
    :goto_3d
    if-ge v5, v3, :cond_6b

    .line 64
    aget-object v6, v2, v5

    .line 66
    new-instance v7, Lorg/json/JSONObject;

    .line 68
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v8, "is_existed"

    .line 73
    iget-boolean v9, v6, Lp1/e$a;->b:Z

    .line 75
    if-eqz v9, :cond_4e

    .line 77
    const/4 v9, 0x1

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move v9, v4

    .line 80
    :goto_4f
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    iget-boolean v8, v6, Lp1/e$a;->b:Z

    .line 85
    if-eqz v8, :cond_5e

    .line 87
    const-string v8, "commit_meta"

    .line 89
    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    goto :goto_65

    .line 95
    :cond_5e
    const-string v8, "block_meta"

    .line 97
    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :goto_65
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 107
    goto :goto_3d

    .line 108
    :cond_6b
    const-string v2, "block_metas"

    .line 110
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_70} :catch_71

    .line 113
    goto :goto_79

    .line 114
    :catch_71
    const-string v0, "UploadRequestResult"

    .line 116
    const-string v1, "Failed generate Json String for UploadRequestResult"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 122
    :goto_79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method
