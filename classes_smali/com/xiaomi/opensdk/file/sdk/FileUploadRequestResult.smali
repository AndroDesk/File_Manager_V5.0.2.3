.class public Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
.super Lp1/i;
.source "FileUploadRequestResult.java"

# interfaces
.implements Ls1/a$a;


# static fields
.field public static final MAP_KEY_KSS:Ljava/lang/String; = "kss_map"

.field public static final MAP_KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final MAP_KEY_RESULT:Ljava/lang/String; = "result_map"

.field public static final PARSER:Ls1/a$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a$a$a<",
            "Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final requestId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->PARSER:Ls1/a$a$a;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
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
    invoke-direct {p0, p1}, Lp1/i;-><init>(Ljava/util/Map;)V

    .line 4
    const-string v0, "requestId"

    .line 6
    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
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
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    .line 15
    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V
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
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-super {p0}, Lp1/i;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v2, "requestId"

    .line 12
    iget-object v3, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    move-result-object v0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_16

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :catch_16
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    return-object v0
.end method
