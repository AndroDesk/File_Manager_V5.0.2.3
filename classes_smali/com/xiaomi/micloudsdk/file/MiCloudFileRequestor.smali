.class public abstract Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;
.super Ljava/lang/Object;
.source "MiCloudFileRequestor.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/file/IFileRequestor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/micloudsdk/file/IFileRequestor<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCloudFileRequestor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    .line 7
    return-void
.end method

.method private getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-wide/32 v0, 0x493e0

    .line 4
    const-string v2, "IOException:"

    .line 6
    const-string v3, "requestServer error: "

    .line 8
    const-string v4, "MiCloudFileRequestor"

    .line 10
    const-string v5, "requestServer error:"

    .line 12
    if-eqz p3, :cond_12

    .line 14
    :try_start_d
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->securePost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    invoke-static {p1, p2}, Lcom/xiaomi/micloudsdk/request/utils/Request;->secureGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 22
    move-result-object p1
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_16} :catch_13f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_d .. :try_end_16} :catch_113
    .catch Ljavax/crypto/BadPaddingException; {:try_start_d .. :try_end_16} :catch_e7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_16} :catch_bb
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_74
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_d .. :try_end_16} :catch_17

    .line 23
    :goto_16
    return-object p1

    .line 24
    :catch_17
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getStatusCode()I

    .line 28
    move-result p2

    .line 29
    const/16 p3, 0x191

    .line 31
    if-eq p2, p3, :cond_6e

    .line 33
    const/16 p3, 0x193

    .line 35
    if-eq p2, p3, :cond_6e

    .line 37
    const/16 p3, 0x1f4

    .line 39
    if-eq p2, p3, :cond_59

    .line 41
    const/16 p3, 0x1f7

    .line 43
    if-eq p2, p3, :cond_41

    .line 45
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p2

    .line 66
    :cond_41
    new-instance p2, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p3

    .line 83
    iget p1, p1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    .line 85
    int-to-long v0, p1

    .line 86
    invoke-direct {p2, p3, v0, v1}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 89
    throw p2

    .line 90
    :cond_59
    new-instance p2, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 92
    new-instance p3, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p2, p1, v0, v1}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 110
    throw p2

    .line 111
    :cond_6e
    new-instance p1, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    .line 113
    invoke-direct {p1}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    .line 116
    throw p1

    .line 117
    :catch_74
    move-exception p1

    .line 118
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object p2

    .line 122
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-static {p3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Lcom/xiaomi/opensdk/exception/RetriableException;->isRetriableException(Ljava/lang/Throwable;)Z

    .line 143
    move-result p2

    .line 144
    if-eqz p2, :cond_a6

    .line 146
    new-instance p2, Lcom/xiaomi/opensdk/exception/RetriableException;

    .line 148
    new-instance p3, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p2, p1, v0, v1}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    .line 166
    throw p2

    .line 167
    :cond_a6
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p2

    .line 188
    :catch_bb
    move-exception p1

    .line 189
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    move-result-object p2

    .line 193
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 196
    move-result-object p3

    .line 197
    invoke-static {p3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object p3

    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 208
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p2

    .line 232
    :catch_e7
    move-exception p1

    .line 233
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    move-result-object p2

    .line 237
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 240
    move-result-object p3

    .line 241
    invoke-static {p3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object p3

    .line 245
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object p2

    .line 252
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 257
    new-instance p3, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 272
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 275
    throw p2

    .line 276
    :catch_113
    move-exception p1

    .line 277
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move-result-object p2

    .line 281
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 284
    move-result-object p3

    .line 285
    invoke-static {p3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    move-result-object p3

    .line 289
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object p2

    .line 296
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object p1

    .line 316
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 319
    throw p2

    .line 320
    :catch_13f
    move-exception p1

    .line 321
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    move-result-object p2

    .line 325
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 328
    move-result-object p3

    .line 329
    invoke-static {p3}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    move-result-object p3

    .line 333
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object p2

    .line 340
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 345
    new-instance p3, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 363
    throw p2
.end method


# virtual methods
.method public commitUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_53

    .line 11
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_33

    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 21
    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 22
    :try_start_15
    new-instance p2, Lorg/json/JSONObject;

    .line 24
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 27
    return-object p2

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    :try_start_1c
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v1, "Http 200 返回的不是JSON格式:"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p2

    .line 52
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 54
    const-string p2, "getCommitUploadParams() can\'t return null."

    .line 56
    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v1, "error in getCommitUploadParams():"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p2

    .line 84
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 86
    const-string p2, "commitUploadUrl is null or empty."

    .line 88
    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method public abstract getCommitUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCommitUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/CommitParameter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract handleCommitUploadResult(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract handleRequestDownloadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract handleRequestUploadResultJson(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation
.end method

.method public requestDownload(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestDownloadURL(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_53

    .line 11
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestDownloadParams(Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_33

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, p1, v1}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 21
    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 22
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 27
    return-object v0

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    :try_start_1c
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v2, "Http 200 返回的不是JSON格式:"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 54
    const-string v0, "getRequestDownloadParams() can\'t return null."

    .line 56
    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    new-instance v0, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v2, "error in getRequestDownloadParams():"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0

    .line 84
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 86
    const-string v0, "requestDownloadUrl is null or empty."

    .line 88
    invoke-direct {p1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method

.method public requestUpload(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestUploadURL(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_53

    .line 11
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getRequestUploadParams(Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Ljava/util/Map;

    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_33

    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/file/MiCloudFileRequestor;->getHttpResopnse(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 21
    move-result-object p1
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_15} :catch_3b

    .line 22
    :try_start_15
    new-instance p2, Lorg/json/JSONObject;

    .line 24
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 27
    return-object p2

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    :try_start_1c
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v1, "Http 200 返回的不是JSON格式:"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p2

    .line 52
    :cond_33
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 54
    const-string p2, "getRequestUploadParams() can\'t return null."

    .line 56
    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_3b} :catch_3b

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    new-instance p2, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v1, "error in getRequestUploadParams():"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p2

    .line 84
    :cond_53
    new-instance p1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    .line 86
    const-string p2, "requestUploadUrl is null or empty."

    .line 88
    invoke-direct {p1, p2}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1
.end method
