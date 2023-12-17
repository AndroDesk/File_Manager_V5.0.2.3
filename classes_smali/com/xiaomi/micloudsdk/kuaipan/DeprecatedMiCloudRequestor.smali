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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm1/g;

    invoke-direct {v0, p1}, Lm1/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mTransmitter:Lm1/g;

    invoke-static {}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lm1/g;->g(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_21
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    goto :goto_11

    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_26

    :catchall_1f
    move-exception p0

    goto :goto_4d

    :catch_21
    move-exception p1

    :try_start_22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_1b

    :goto_26
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    if-eqz p0, :cond_45

    :try_start_2d
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_45
    new-instance p0, Ljava/io/IOException;

    const-string p1, "decoder is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method public static encodeData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

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

    const-string v0, "exec failed."

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    :try_start_9
    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->execute(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;ILcn/kuaipan/android/kss/TransferStep;)Lm1/f;

    move-result-object v7

    invoke-static {v7, p4}, La/b;->c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V

    const/4 p1, 0x0

    invoke-direct {p0, v7, p1, p4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->verify(Lm1/f;ZLcn/kuaipan/android/kss/TransferStep;)V

    invoke-virtual {v7}, Lm1/f;->b()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_26

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object p2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p1, p2, p4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getResultJSON(Ljava/io/InputStream;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_22} :catch_47
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_22} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_9 .. :try_end_22} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_9 .. :try_end_22} :catch_35
    .catchall {:try_start_9 .. :try_end_22} :catchall_33

    :try_start_22
    invoke-virtual {v7}, Lm1/f;->g()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_25

    :catchall_25
    return-object p1

    :cond_26
    :try_start_26
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const p2, 0x7a509

    invoke-virtual {v7}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_33} :catch_47
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_33} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_26 .. :try_end_33} :catch_3b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_26 .. :try_end_33} :catch_35
    .catchall {:try_start_26 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p1

    goto :goto_4d

    :catch_35
    move-exception p1

    :try_start_36
    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :catch_3b
    move-exception p1

    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :catch_41
    move-exception p1

    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :catch_47
    move-exception p1

    invoke-static {p1, v0, p4}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_33

    :goto_4d
    :try_start_4d
    invoke-virtual {v7}, Lm1/f;->g()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_50

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

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move/from16 v0, p4

    if-eqz v1, :cond_139

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcn/kuaipan/android/http/KscHttpRequest;

    iget-object v4, v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->method:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v3, v4, v2}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;)V

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->filterQuerys(Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/http/KscHttpRequest;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/List;

    const-string v7, ""

    if-lez v0, :cond_38

    invoke-virtual {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "X-XIAOMI-REDIRECT-COUNT"

    invoke-interface {v8, v10, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual {v3}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    const-string v9, "X-XIAOMI-SUPPORT-REDIRECT"

    const-string v10, "true"

    invoke-interface {v8, v9, v10}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v8, v6, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mTransmitter:Lm1/g;

    invoke-virtual {v8, v3}, Lm1/g;->a(Lcn/kuaipan/android/http/KscHttpRequest;)Lm1/f;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v13

    const-wide/16 v10, 0x0

    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object v12

    if-eqz v12, :cond_68

    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    if-eqz v12, :cond_68

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    :cond_68
    move-wide/from16 v23, v10

    invoke-virtual {v3}, Lm1/f;->e()I

    move-result v10

    invoke-virtual {v3}, Lm1/f;->c()Ljava/lang/Throwable;

    move-result-object v25

    if-eqz v25, :cond_7c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :cond_7c
    move-object/from16 v22, v7

    const-string v7, "Micloud"

    const/4 v11, 0x3

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    const-string v12, "MiCloudRequestor"

    if-eqz v11, :cond_9d

    const-string v11, "execute response status code: "

    invoke-static {v11}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lm1/f;->e()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-wide/from16 v17, v8

    move-wide/from16 v19, v23

    move/from16 v21, v10

    invoke-virtual/range {v15 .. v22}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    if-nez v25, :cond_d8

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v15

    new-instance v11, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v20, 0x0

    move-object/from16 v21, v11

    move-object v2, v12

    move-object/from16 v12, v16

    move-object v4, v15

    move-wide v15, v8

    move-wide/from16 v17, v23

    move/from16 v19, v10

    invoke-direct/range {v11 .. v20}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    move-object/from16 v8, v21

    invoke-virtual {v4, v8}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    goto :goto_f4

    :cond_d8
    move-object v2, v12

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v4

    new-instance v15, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x0

    move-object v11, v15

    move-object v5, v15

    move-wide v15, v8

    move-object/from16 v17, v25

    invoke-direct/range {v11 .. v18}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    invoke-virtual {v4, v5}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    :goto_f4
    const/16 v4, 0xc8

    if-ne v10, v4, :cond_138

    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, v6, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v5, v5, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_116

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRelocationUtils;->checkRedirect(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_138

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;->access$002(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Landroid/net/Uri;)Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->execute(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;ILcn/kuaipan/android/kss/TransferStep;)Lm1/f;

    move-result-object v0

    return-object v0

    :cond_138
    return-object v3

    :cond_139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "API Config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "encrypted_user_id"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCookies(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;
    .registers 3

    const-string v0, "serviceToken="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_15

    const-string p1, "; cUserId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    new-instance p0, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cookie"

    invoke-direct {p0, v0, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getResultJSON(Ljava/io/InputStream;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "getResultJSON failed."

    :try_start_2
    invoke-static {p1, p0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->decodeData(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_13} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_13} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p0

    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :catch_1a
    move-exception p0

    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :catch_20
    move-exception p0

    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :catch_26
    move-exception p0

    invoke-static {p0, v0, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

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

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p2, :cond_23

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_23
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private verify(Lm1/f;ZLcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    invoke-virtual {p1}, Lm1/f;->e()I

    move-result p2

    invoke-static {p2}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->isMiCloudServerException(I)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lcn/kuaipan/android/exception/ServerException;

    invoke-virtual {p1}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, p3}, Lcn/kuaipan/android/exception/ServerException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v0

    :cond_19
    new-instance p3, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    iget-object p1, p1, Lm1/f;->d:Lorg/apache/http/HttpResponse;

    invoke-direct {p3, p2, p1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILorg/apache/http/HttpResponse;)V

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

    if-nez p3, :cond_a

    const-string p1, "MiCloudRequestor"

    const-string p2, "UploadResult is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadURL(Lp1/g$a;Lr1/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7a129

    if-nez v1, :cond_82

    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadParams(Lp1/g$a;Lr1/e;)Ljava/util/HashMap;

    move-result-object v0

    :try_start_22
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getCommitUploadPostString(Lp1/g$a;Lr1/e;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleCommitUploadResult(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_30} :catch_78

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_61

    invoke-static {v1, v4}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v3}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;

    iget-object v1, v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->stat:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    return-void

    :cond_52
    iget-object p3, p3, Lr1/e;->b:Lr1/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    new-instance p1, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 p2, 0xc8

    iget-object p3, v0, Lcom/xiaomi/opensdk/file/sdk/FileCommitResult;->stat:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v4}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :cond_61
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const-string p2, "kssJson is null or empty, result:"

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :catch_78
    move-exception p1

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "commitUpload failed."

    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_82
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_COMMIT:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "commitUrl is null or empty."

    invoke-direct {p1, v2, p3, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

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

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadURL(Lp1/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7a129

    if-nez v1, :cond_5f

    new-instance v1, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v3, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, p0, v3, v0}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadParams(Lp1/g$a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestDownloadPostString(Lp1/g$a;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_22
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleRequestDownloadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_26} :catch_55

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3e

    invoke-static {p1, v4}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object p1

    const-class v1, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, p1, v1, v4, v2}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/FileDownloadRequestResult;

    return-object p1

    :cond_3e
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    const-string v1, "kssJson is null or empty, result:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, v4}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1

    :catch_55
    move-exception p1

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string v1, "handleRequestDownloadResultJson failed."

    invoke-static {p1, v1, v0}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_5f
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string v1, "requestDownloadUrl is null or empty."

    invoke-direct {p1, v2, v1, v0}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1
.end method

.method public bridge synthetic requestDownload(Lp1/g$a;)Lp1/c;
    .registers 2

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

    invoke-virtual {p0, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadURL(Lp1/g$a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7a129

    if-nez v0, :cond_5f

    new-instance v0, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;

    sget-object v2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v0, p0, v2, p1}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;-><init>(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadParams(Lp1/g$a;Lr1/k;)Ljava/util/HashMap;

    move-result-object p1

    :try_start_18
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->getRequestUploadPostString(Lp1/g$a;Lr1/k;)Ljava/lang/String;

    move-result-object p3

    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {p0, v0, p1, p3, v2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->exec(Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor$ApiConfig;Ljava/util/Map;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->handleRequestUploadResultJson(Lorg/json/JSONObject;Lp1/g$a;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_26} :catch_55

    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_3e

    invoke-static {p2, v2}, Lcom/xiaomi/opensdk/file/utils/FileSDKUtils;->contentKssJsonToMap(Lorg/json/JSONObject;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object p2

    const-class p3, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v2, v0}, Ls1/a;->e(Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/Class;Lcn/kuaipan/android/kss/TransferStep;[Ljava/lang/String;)Ls1/a$a;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    return-object p1

    :cond_3e
    new-instance p2, Lcn/kuaipan/android/exception/KscException;

    const-string p3, "kssJson is null or empty, result:"

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v1, p1, v2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p2

    :catch_55
    move-exception p1

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "requestUpload failed."

    invoke-static {p1, p3, p2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p1

    throw p1

    :cond_5f
    new-instance p1, Lcn/kuaipan/android/exception/KscException;

    sget-object p2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_BIZ_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    const-string p3, "requestUploadUrl is null or empty."

    invoke-direct {p1, v1, p3, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw p1
.end method

.method public bridge synthetic requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lp1/e;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/kuaipan/DeprecatedMiCloudRequestor;->requestUpload(Ljava/io/File;Lp1/g$a;Lr1/k;)Lcom/xiaomi/opensdk/file/sdk/FileUploadRequestResult;

    move-result-object p1

    return-object p1
.end method
