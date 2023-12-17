.class public Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;
.super Ljava/lang/Object;
.source "FileSDKUtils.java"


# static fields
.field public static final J_EXIST:Ljava/lang/String; = "existed"

.field public static final J_FILENAME:Ljava/lang/String; = "filename"

.field public static final J_KSS:Ljava/lang/String; = "kss"

.field public static final J_MIMETYPE:Ljava/lang/String; = "mimeType"

.field public static final J_SHA1:Ljava/lang/String; = "sha1"

.field public static final J_SIZE:Ljava/lang/String; = "size"

.field public static final J_STORAGE:Ljava/lang/String; = "storage"

.field public static final J_UPLOAD_ID:Ljava/lang/String; = "uploadId"

.field public static final J_UPLOAD_ID_SFS:Ljava/lang/String; = "upload_id"

.field public static final J_UPLOAD_ID_SFS_V2:Ljava/lang/String; = "uploadId"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcn/kuaipan/android/kss/TransferStep;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "contentKssJsonToMap failed."

    :try_start_2
    new-instance v1, Lcn/kuaipan/android/utils/a;

    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    move-result-object v1

    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    if-ne v1, v3, :cond_34

    if-eqz v2, :cond_27

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    return-object v2

    :cond_27
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    const v2, 0x7a50b

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v1

    :cond_34
    new-instance p0, Lorg/json/JSONException;

    const-string v1, "Document not end of EOF"

    invoke-direct {p0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3c} :catch_42
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    invoke-static {p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :catch_42
    move-exception p0

    invoke-static {p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0
.end method
