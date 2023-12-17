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

    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult$1;-><init>()V

    sput-object v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->PARSER:Ls1/a$a$a;

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

    invoke-direct {p0, p1}, Lp1/i;-><init>(Ljava/util/Map;)V

    const-string v0, "requestId"

    invoke-static {p1, v0}, Ls1/a;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
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
    new-instance v0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    invoke-direct {v0, p0}, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;-><init>(Ljava/util/Map;)V
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
.method public toString()Ljava/lang/String;
    .registers 5

    invoke-super {p0}, Lp1/i;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "requestId"

    iget-object v3, p0, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11} :catch_16

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method
