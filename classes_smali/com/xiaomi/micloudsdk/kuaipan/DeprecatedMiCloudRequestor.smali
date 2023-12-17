.class public abstract Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;
.super Ljava/lang/Object;
.source "DeprecatedMiCloudRequestor.java"

# interfaces
.implements Lp1/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lp1/g$a;",
        ">",
        "Ljava/lang/Object;",
        "Lp1/d<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final JSON_TAG_DATA:Ljava/lang/String; = "data"

.field public static final JSON_TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"

.field private static final TAG:Ljava/lang/String; = "MiCloudRequestor"


# instance fields
.field public mAccount:Landroid/accounts/Account;

.field private mContext:Landroid/content/Context;

.field public mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

.field private final mTransmitter:Lm1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lm1/g;

    .line 6
    invoke-direct {v0, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mTransmitter:Lm1/g;

    .line 11
    invoke-static {}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getUserAgent()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, v2, v1}, Lm1/g;->g(ILjava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    .line 21
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 23
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/io/BufferedReader;

    .line 8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 10
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 13
    const/16 p1, 0x400

    .line 15
    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 18
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1b

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_21
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    .line 27
    goto :goto_11

    .line 28
    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 31
    goto :goto_26

    .line 32
    :catchall_1f
    move-exception p0

    .line 33
    goto :goto_4d

    .line 34
    :catch_21
    move-exception p1

    .line 35
    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    .line 38
    goto :goto_1b

    .line 39
    :goto_26
    const/4 p1, 0x2

    .line 40
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_45

    .line 46
    :try_start_2d
    new-instance v1, Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3e} :catch_3f

    .line 63
    return-object v1

    .line 64
    :catch_3f
    new-instance p0, Ljava/io/IOException;

    .line 66
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 69
    throw p0

    .line 70
    :cond_45
    new-instance p0, Ljava/io/IOException;

    .line 72
    const-string p1, "decoder is null"

    .line 74
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0

    .line 78
    :goto_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 81
    throw p0
.end method

.method public static encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    .line 5
    move-result-object p0

    .line 6
    const-string v0, "UTF-8"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 15
    move-result-object p0

    .line 16
    const/4 p1, 0x2

    .line 17
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "TT;>.ApiConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/kuaipan/android/kss/TransferStep;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    const-string v0, "exec failed."

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v6, p4

    .line 10
    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->execute(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;ILcn/kuaipan/android/kss/TransferStep;)Lm1/f;

    .line 13
    move-result-object v7

    .line 14
    invoke-static {v7, p4}, La/b;->c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, v7, p1, p4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->verify(Lm1/f;ZLcn/kuaipan/android/kss/TransferStep;)V

    .line 21
    invoke-virtual {v7}, Lm1/f;->b()Ljava/io/InputStream;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_26

    .line 27
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 29
    iget-object p2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 31
    invoke-static {p1, p2, p4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getResultJSON(Ljava/io/InputStream;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    .line 34
    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_22} :catch_47
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_22} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_22} :catch_35
    .catchall {:try_start_9 .. :try_end_22} :catchall_33

    .line 35
    :try_start_22
    invoke-virtual {v7}, Lm1/f;->g()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_25

    .line 38
    :catchall_25
    return-object p1

    .line 39
    :cond_26
    :try_start_26
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    .line 41
    const p2, 0x7a509

    .line 44
    invoke-virtual {v7}, Lm1/f;->a()Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    invoke-direct {p1, p2, p3, p4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 51
    throw p1
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_33} :catch_47
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_26 .. :try_end_33} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_26 .. :try_end_33} :catch_35
    .catchall {:try_start_26 .. :try_end_33} :catchall_33

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    goto :goto_4d

    .line 54
    :catch_35
    move-exception p1

    .line 55
    :try_start_36
    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 58
    move-result-object p1

    .line 59
    throw p1

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 64
    move-result-object p1

    .line 65
    throw p1

    .line 66
    :catch_41
    move-exception p1

    .line 67
    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 70
    move-result-object p1

    .line 71
    throw p1

    .line 72
    :catch_47
    move-exception p1

    .line 73
    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 76
    move-result-object p1

    .line 77
    throw p1
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_33

    .line 78
    :goto_4d
    :try_start_4d
    invoke-virtual {v7}, Lm1/f;->g()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_50

    .line 81
    :catchall_50
    throw p1
.end method

.method private execute(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;ILcn/kuaipan/android/kss/TransferStep;)Lm1/f;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor<",
            "TT;>.ApiConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/kuaipan/android/kss/TransferStep;",
            ")",
            "Lm1/f;"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v0, p4

    .line 7
    if-eqz v1, :cond_139

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lcn/kuaipan/android/http/KscHttpRequest;

    .line 15
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 17
    invoke-direct {v3, v4, v2}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;)V

    .line 20
    move-object/from16 v2, p2

    .line 22
    move-object/from16 v4, p3

    .line 24
    move-object/from16 v5, p5

    .line 26
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->filterQuerys(Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/http/KscHttpRequest;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/List;

    .line 29
    const-string v7, ""

    .line 31
    if-lez v0, :cond_38

    .line 33
    invoke-virtual {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 36
    move-result-object v8

    .line 37
    new-instance v9, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v9

    .line 52
    const-string v10, "X-XIAOMI-REDIRECT-COUNT"

    .line 54
    invoke-interface {v8, v10, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_38
    invoke-virtual {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 60
    move-result-object v8

    .line 61
    const-string v9, "X-XIAOMI-SUPPORT-REDIRECT"

    .line 63
    const-string v10, "true"

    .line 65
    invoke-interface {v8, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide v13

    .line 72
    iget-object v8, v6, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mTransmitter:Lm1/g;

    .line 74
    invoke-virtual {v8, v3}, Lm1/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;)Lm1/f;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    move-result-wide v8

    .line 82
    sub-long/2addr v8, v13

    .line 83
    const-wide/16 v10, 0x0

    .line 85
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 88
    move-result-object v12

    .line 89
    if-eqz v12, :cond_68

    .line 91
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 94
    move-result-object v12

    .line 95
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 98
    move-result-object v12

    .line 99
    if-eqz v12, :cond_68

    .line 101
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 104
    move-result-wide v10

    .line 105
    :cond_68
    move-wide/from16 v23, v10

    .line 107
    invoke-virtual {v3}, Lm1/f;->e()I

    .line 110
    move-result v10

    .line 111
    invoke-virtual {v3}, Lm1/f;->c()Ljava/lang/Throwable;

    .line 114
    move-result-object v25

    .line 115
    if-eqz v25, :cond_7c

    .line 117
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 124
    move-result-object v7

    .line 125
    :cond_7c
    move-object/from16 v22, v7

    .line 127
    const-string v7, "Micloud"

    .line 129
    const/4 v11, 0x3

    .line 130
    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 133
    move-result v11

    .line 134
    const-string v12, "MiCloudRequestor"

    .line 136
    if-eqz v11, :cond_9d

    .line 138
    const-string v11, "execute response status code: "

    .line 140
    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-result-object v11

    .line 144
    invoke-virtual {v3}, Lm1/f;->e()I

    .line 147
    move-result v15

    .line 148
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v11

    .line 155
    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_9d
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    .line 161
    move-result-object v15

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    .line 165
    move-result-object v11

    .line 166
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 169
    move-result-object v16

    .line 170
    move-wide/from16 v17, v8

    .line 172
    move-wide/from16 v19, v23

    .line 174
    move/from16 v21, v10

    .line 176
    invoke-virtual/range {v15 .. v22}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    .line 179
    if-nez v25, :cond_d8

    .line 181
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 184
    move-result-object v15

    .line 185
    new-instance v11, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    .line 190
    move-result-object v16

    .line 191
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 194
    move-result-object v16

    .line 195
    const/16 v20, 0x0

    .line 197
    move-object/from16 v21, v11

    .line 199
    move-object v2, v12

    .line 200
    move-object/from16 v12, v16

    .line 202
    move-object v4, v15

    .line 203
    move-wide v15, v8

    .line 204
    move-wide/from16 v17, v23

    .line 206
    move/from16 v19, v10

    .line 208
    invoke-direct/range {v11 .. v20}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    .line 211
    move-object/from16 v8, v21

    .line 213
    invoke-virtual {v4, v8}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    .line 216
    goto :goto_f4

    .line 217
    :cond_d8
    move-object v2, v12

    .line 218
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 221
    move-result-object v4

    .line 222
    new-instance v15, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 231
    move-result-object v12

    .line 232
    const/16 v18, 0x0

    .line 234
    move-object v11, v15

    .line 235
    move-object v5, v15

    .line 236
    move-wide v15, v8

    .line 237
    move-object/from16 v17, v25

    .line 239
    invoke-direct/range {v11 .. v18}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    .line 242
    invoke-virtual {v4, v5}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    .line 245
    :goto_f4
    const/16 v4, 0xc8

    .line 247
    if-ne v10, v4, :cond_138

    .line 249
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 252
    move-result-object v4

    .line 253
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 256
    move-result-object v4

    .line 257
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 260
    move-result-object v4

    .line 261
    iget-object v5, v6, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 263
    iget-object v5, v5, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 265
    invoke-static {v5, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 268
    move-result-object v4

    .line 269
    const/4 v5, 0x3

    .line 270
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 273
    move-result v5

    .line 274
    if-eqz v5, :cond_116

    .line 276
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_116
    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    .line 282
    move-result-object v2

    .line 283
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_138

    .line 289
    add-int/lit8 v4, v0, 0x1

    .line 291
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 294
    move-result-object v0

    .line 295
    invoke-static {v1, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->access$002(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;

    .line 298
    move-object/from16 v0, p0

    .line 300
    move-object/from16 v1, p1

    .line 302
    move-object/from16 v2, p2

    .line 304
    move-object/from16 v3, p3

    .line 306
    move-object/from16 v5, p5

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->execute(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;ILcn/kuaipan/android/kss/TransferStep;)Lm1/f;

    .line 311
    move-result-object v0

    .line 312
    return-object v0

    .line 313
    :cond_138
    return-object v3

    .line 314
    :cond_139
    new-instance v0, Ljava/lang/RuntimeException;

    .line 316
    const-string v1, "API Config can not be null"

    .line 318
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 321
    throw v0
.end method

.method public static getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "encrypted_user_id"

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static getCookies(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;
    .registers 3

    .line 1
    const-string v0, "serviceToken="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object p1, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    if-eqz p0, :cond_15

    .line 14
    const-string p1, "; cUserId="

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_15
    new-instance p0, Lorg/apache/http/message/BasicHeader;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "Cookie"

    .line 30
    invoke-direct {p0, v0, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object p0
.end method

.method public static getResultJSON(Ljava/io/InputStream;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    const-string v0, "getResultJSON failed."

    .line 3
    :try_start_2
    invoke-static {p1, p0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p1, Lorg/json/JSONObject;

    .line 17
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_13} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_13} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    .line 20
    return-object p1

    .line 21
    :catch_14
    move-exception p0

    .line 22
    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 25
    move-result-object p0

    .line 26
    throw p0

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 31
    move-result-object p0

    .line 32
    throw p0

    .line 33
    :catch_20
    move-exception p0

    .line 34
    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 37
    move-result-object p0

    .line 38
    throw p0

    .line 39
    :catch_26
    move-exception p0

    .line 40
    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method public static getSignature(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    if-eqz p2, :cond_23

    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p2

    .line 12
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_23

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 24
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private verify(Lm1/f;ZLcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lm1/f;->e()I

    .line 4
    move-result p2

    .line 5
    invoke-static {p2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_19

    .line 11
    const/16 v0, 0xc8

    .line 13
    if-ne p2, v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Lcn/kuaipan/android/exception/ServerException;

    .line 18
    invoke-virtual {p1}, Lm1/f;->a()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p2, p1, p3}, Lcn/kuaipan/android/exception/ServerException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 25
    throw v0

    .line 26
    :cond_19
    new-instance p3, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    .line 28
    iget-object p1, p1, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    .line 30
    invoke-direct {p3, p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

    .line 33
    throw p3
.end method


# virtual methods
.method public commitUpload(Ljava/io/File;Lp1/g$a;Lr1/e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lr1/e;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_a

    .line 3
    const-string p1, "MiCloudRequestor"

    .line 5
    const-string p2, "UploadResult is null."

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadURL(Lp1/g$a;Lr1/e;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    const v2, 0x7a129

    .line 22
    if-nez v1, :cond_82

    .line 24
    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    .line 26
    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 28
    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadParams(Lp1/g$a;Lr1/e;)Ljava/util/HashMap;

    .line 34
    move-result-object v0

    .line 35
    :try_start_22
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadPostString(Lp1/g$a;Lr1/e;)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    .line 41
    invoke-direct {p0, v1, v0, v3, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleCommitUploadResult(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    .line 48
    move-result-object v1
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_30} :catch_78

    .line 49
    if-eqz v1, :cond_61

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 54
    move-result v3

    .line 55
    if-lez v3, :cond_61

    .line 57
    invoke-static {v1, v4}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    .line 60
    move-result-object v1

    .line 61
    const-class v2, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    .line 63
    const/4 v3, 0x0

    .line 64
    new-array v3, v3, [Ljava/lang/String;

    .line 66
    invoke-static {v0, v1, v2, v4, v3}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    .line 72
    iget-object v1, v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->stat:Ljava/lang/String;

    .line 74
    const-string v2, "OK"

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_52

    .line 82
    return-void

    .line 83
    :cond_52
    iget-object p3, p3, Lr1/e;->b:Lr1/k;

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    .line 88
    new-instance p1, Lcn/kuaipan/android/exception/ServerMsgException;

    .line 90
    const/16 p2, 0xc8

    .line 92
    iget-object p3, v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->stat:Ljava/lang/String;

    .line 94
    invoke-direct {p1, p2, p3, v4}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 97
    throw p1

    .line 98
    :cond_61
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    .line 100
    const-string p2, "kssJson is null or empty, result:"

    .line 102
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    move-result-object p3

    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, v2, p2, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 120
    throw p1

    .line 121
    :catch_78
    move-exception p1

    .line 122
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    .line 124
    const-string p3, "commitUpload failed."

    .line 126
    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 129
    move-result-object p1

    .line 130
    throw p1

    .line 131
    :cond_82
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    .line 133
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    .line 135
    const-string p3, "commitUrl is null or empty."

    .line 137
    invoke-direct {p1, v2, p3, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 140
    throw p1
.end method

.method public getCommitUploadParams(Lp1/g$a;Lr1/e;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/e;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getCommitUploadPostString(Lp1/g$a;Lr1/e;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getCommitUploadURL(Lp1/g$a;Lr1/e;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/e;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getRequestDownloadParams(Lp1/g$a;)Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRequestDownloadPostString(Lp1/g$a;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getRequestDownloadURL(Lp1/g$a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getRequestUploadParams(Lp1/g$a;Lr1/k;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/k;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getRequestUploadPostString(Lp1/g$a;Lr1/k;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lr1/k;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getRequestUploadURL(Lp1/g$a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract handleCommitUploadResult(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public abstract handleRequestDownloadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public abstract handleRequestUploadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public requestDownload(Lp1/g$a;)Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadURL(Lp1/g$a;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7a129

    if-nez v1, :cond_5f

    .line 4
    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadParams(Lp1/g$a;)Ljava/util/HashMap;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadPostString(Lp1/g$a;)Ljava/lang/String;

    move-result-object v3

    .line 7
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    :try_start_22
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleRequestDownloadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_26} :catch_55

    if-eqz p1, :cond_3e

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3e

    .line 10
    invoke-static {p1, v4}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object p1

    .line 11
    const-class v1, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, p1, v1, v4, v2}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    return-object p1

    .line 12
    :cond_3e
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const-string v1, "kssJson is null or empty, result:"

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :catch_55
    move-exception p1

    .line 15
    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string v1, "handleRequestDownloadResultJson failed."

    invoke-static {p1, v1, v0}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    .line 16
    :cond_5f
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string v1, "requestDownloadUrl is null or empty."

    invoke-direct {p1, v2, v1, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1
.end method

.method public bridge synthetic requestDownload(Lp1/g$a;)Lp1/c;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->requestDownload(Lp1/g$a;)Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    move-result-object p1

    return-object p1
.end method

.method public requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Lr1/k;",
            ")",
            "Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadURL(Lp1/g$a;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7a129

    if-nez v0, :cond_5f

    .line 4
    new-instance v0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v0, p0, v2, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadParams(Lp1/g$a;Lr1/k;)Ljava/util/HashMap;

    move-result-object p1

    .line 6
    :try_start_18
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadPostString(Lp1/g$a;Lr1/k;)Ljava/lang/String;

    move-result-object p3

    .line 7
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {p0, v0, p1, p3, v2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleRequestUploadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_26} :catch_55

    if-eqz p2, :cond_3e

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3e

    .line 10
    invoke-static {p2, v2}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object p2

    .line 11
    const-class p3, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v2, v0}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    return-object p1

    .line 12
    :cond_3e
    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    const-string p3, "kssJson is null or empty, result:"

    .line 13
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1, v2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :catch_55
    move-exception p1

    .line 15
    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "requestUpload failed."

    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    .line 16
    :cond_5f
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "requestUploadUrl is null or empty."

    invoke-direct {p1, v1, p3, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1
.end method

.method public bridge synthetic requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lp1/e;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    move-result-object p1

    return-object p1
.end method
