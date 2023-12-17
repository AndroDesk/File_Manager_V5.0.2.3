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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "secure_key"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b;->G(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lp1/i;->secure_key:[B

    const-string v0, "file_meta"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp1/i;->file_meta:Ljava/lang/String;

    const-string v0, "block_metas"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lp1/e$a;

    iput-object v2, p0, Lp1/i;->blocks:[Lp1/e$a;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "is_existed"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ls1/a;->a(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v4, :cond_51

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    move v4, v1

    :goto_52
    if-eqz v4, :cond_57

    const-string v5, "commit_meta"

    goto :goto_59

    :cond_57
    const-string v5, "block_meta"

    :goto_59
    invoke-static {v3, v5}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lp1/e$a;

    invoke-direct {v5, v3, v4}, Lp1/e$a;-><init>(Ljava/lang/String;Z)V

    iget-object v3, p0, Lp1/i;->blocks:[Lp1/e$a;

    add-int/lit8 v4, v2, 0x1

    aput-object v5, v3, v2

    move v2, v4

    goto :goto_2f

    :cond_6a
    const-string v0, "node_urls"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_94

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v2, v1

    move v1, v3

    goto :goto_80

    :cond_94
    return-void
.end method

.method public static create(Ljava/lang/String;)Lp1/i;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/h;->c(Ljava/io/StringReader;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_25
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    :try_start_c
    new-instance v0, Lp1/i;

    invoke-direct {v0, p0}, Lp1/i;-><init>(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_1d
    .catchall {:try_start_c .. :try_end_11} :catchall_46

    if-eqz p0, :cond_1c

    instance-of v1, p0, Ls1/f;

    if-eqz v1, :cond_1c

    check-cast p0, Ls1/f;

    invoke-interface {p0}, Ls1/f;->recycle()V

    :cond_1c
    return-object v0

    :catch_1d
    move-exception v0

    goto :goto_29

    :catch_1f
    move-exception v0

    goto :goto_39

    :catchall_21
    move-exception p0

    goto :goto_4a

    :catch_23
    move-exception p0

    goto :goto_36

    :catch_25
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_29
    :try_start_29
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    const v2, 0x7a509

    const-string v3, "kss is not json"

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v1

    :goto_36
    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_39
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    const v2, 0x7a50c

    const-string v3, "kss is null"

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v1
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_4a
    if-eqz v0, :cond_55

    instance-of v1, v0, Ls1/f;

    if-eqz v1, :cond_55

    check-cast v0, Ls1/f;

    invoke-interface {v0}, Ls1/f;->recycle()V

    :cond_55
    throw p0
.end method


# virtual methods
.method public getBlock(I)Lp1/e$a;
    .registers 4

    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object p1, v0, p1

    return-object p1

    :cond_b
    :goto_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockCount()I
    .registers 2

    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    return v0
.end method

.method public getFileMeta()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lp1/i;->file_meta:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeUrls()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    return-object v0
.end method

.method public getSecureKey()[B
    .registers 2

    iget-object v0, p0, Lp1/i;->secure_key:[B

    return-object v0
.end method

.method public isCompleted()Z
    .registers 7

    iget-object v0, p0, Lp1/i;->blocks:[Lp1/e$a;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v2, :cond_15

    aget-object v5, v0, v4

    iget-boolean v5, v5, Lp1/e$a;->b:Z

    if-nez v5, :cond_12

    return v3

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_15
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "secure_key"

    iget-object v2, p0, Lp1/i;->secure_key:[B

    invoke-static {v2}, La/b;->l([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "file_meta"

    iget-object v2, p0, Lp1/i;->file_meta:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    if-eqz v1, :cond_27

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lp1/i;->node_urls:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto :goto_2c

    :cond_27
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :goto_2c
    const-string v2, "node_urls"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lp1/i;->blocks:[Lp1/e$a;

    if-eqz v2, :cond_6b

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_3d
    if-ge v5, v3, :cond_6b

    aget-object v6, v2, v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "is_existed"

    iget-boolean v9, v6, Lp1/e$a;->b:Z

    if-eqz v9, :cond_4e

    const/4 v9, 0x1

    goto :goto_4f

    :cond_4e
    move v9, v4

    :goto_4f
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-boolean v8, v6, Lp1/e$a;->b:Z

    if-eqz v8, :cond_5e

    const-string v8, "commit_meta"

    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_65

    :cond_5e
    const-string v8, "block_meta"

    iget-object v6, v6, Lp1/e$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_65
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_6b
    const-string v2, "block_metas"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_79

    :catch_71
    const-string v0, "UploadRequestResult"

    const-string v1, "Failed generate Json String for UploadRequestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
