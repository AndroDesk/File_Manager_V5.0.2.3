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

    .line 1
    const-string v0, "contentKssJsonToMap failed."

    .line 3
    :try_start_2
    new-instance v1, Lcn/kuaipan/android/utils/a;

    .line 5
    new-instance v2, Ljava/io/StringReader;

    .line 7
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-direct {v1, v2}, Lcn/kuaipan/android/utils/a;-><init>(Ljava/io/Reader;)V

    .line 17
    invoke-static {v1}, Ls1/h;->a(Lcn/kuaipan/android/utils/a;)Ljava/io/Serializable;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/util/Map;

    .line 23
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/a;->r()Lcn/kuaipan/android/utils/JsonToken;

    .line 26
    move-result-object v1

    .line 27
    sget-object v3, Lcn/kuaipan/android/utils/JsonToken;->END_DOCUMENT:Lcn/kuaipan/android/utils/JsonToken;

    .line 29
    if-ne v1, v3, :cond_34

    .line 31
    if-eqz v2, :cond_27

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_27

    .line 39
    return-object v2

    .line 40
    :cond_27
    new-instance v1, Lcn/kuaipan/android/exception/KscException;

    .line 42
    const v2, 0x7a50b

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v1, v2, p0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 52
    throw v1

    .line 53
    :cond_34
    new-instance p0, Lorg/json/JSONException;

    .line 55
    const-string v1, "Document not end of EOF"

    .line 57
    invoke-direct {p0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3c} :catch_42
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_3c} :catch_3c

    .line 61
    :catch_3c
    move-exception p0

    .line 62
    invoke-static {p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :catch_42
    move-exception p0

    .line 68
    invoke-static {p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 71
    move-result-object p0

    .line 72
    throw p0
.end method
