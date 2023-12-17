.class public final Lcn/kuaipan/android/kss/download/a;
.super Ljava/lang/Object;
.source "KssDownloader.java"

# interfaces
.implements Lp1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/kuaipan/android/kss/download/a$a;
    }
.end annotation


# instance fields
.field public final b:Lm1/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm1/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuaipan/android/kss/download/a;->b:Lm1/g;

    return-void
.end method

.method public static c(Lm1/f;)V
    .registers 3

    if-eqz p0, :cond_42

    :try_start_2
    invoke-virtual {p0}, Lm1/f;->g()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_42

    :catchall_6
    move-exception p0

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_10

    move-object v0, p0

    check-cast v0, Ljava/lang/InterruptedException;

    goto :goto_3e

    :cond_10
    sget-boolean v1, La/b;->f:Z

    if-eqz v1, :cond_15

    goto :goto_3e

    :cond_15
    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v1, :cond_26

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/InterruptedException;

    goto :goto_3e

    :cond_26
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_3e

    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_3e

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_3e

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/InterruptedException;

    :cond_3e
    :goto_3e
    if-nez v0, :cond_41

    goto :goto_42

    :cond_41
    throw v0

    :cond_42
    :goto_42
    return-void
.end method

.method public static d(Lm1/f;Lq1/c;Lcn/kuaipan/android/kss/download/b;Ljava/util/concurrent/atomic/AtomicInteger;Lcn/kuaipan/android/kss/download/a$a;)V
    .registers 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lm1/f;->e()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_15

    invoke-virtual {p0}, Lm1/f;->e()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    goto :goto_1d

    :cond_15
    :goto_15
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_GET_CONTENT:Lcn/kuaipan/android/kss/TransferStep;

    iput-object v2, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    invoke-virtual {p0}, Lm1/f;->b()Ljava/io/InputStream;

    move-result-object v2

    :goto_1d
    if-eqz v2, :cond_48

    sget-object p0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    iput-object p0, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    const/high16 p0, 0x80000

    new-array p0, p0, [B

    :goto_27
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_40

    const/4 v1, 0x1

    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_WRITE_FILE:Lcn/kuaipan/android/kss/TransferStep;

    iput-object v4, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    if-lez v3, :cond_3b

    invoke-interface {p1, p0, v3, p2}, Lq1/c;->a([BILcn/kuaipan/android/kss/download/b;)I

    move-result v4

    if-ge v4, v3, :cond_3b

    goto :goto_40

    :cond_3b
    sget-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    iput-object v3, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_46

    goto :goto_27

    :cond_40
    :goto_40
    if-eqz v1, :cond_45

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_45
    return-void

    :catchall_46
    move-exception p0

    goto :goto_66

    :cond_48
    :try_start_48
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    const p2, 0x7a128

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not meet exception, but no response.\n"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_46

    :goto_66
    if-eqz v1, :cond_6b

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6b
    throw p0
.end method


# virtual methods
.method public final a(Lp1/c;Lq1/c;Lcn/kuaipan/android/kss/download/LoadMap;Lm1/j$a;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 38

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->c()Lcn/kuaipan/android/kss/download/b;

    move-result-object v0

    new-instance v3, Lp1/h;

    invoke-interface/range {p1 .. p1}, Lp1/c;->getSecureKey()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lp1/h;-><init>([B)V

    move-object v4, v0

    :goto_12
    if-eqz v4, :cond_22d

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_227

    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->a()Lcn/kuaipan/android/kss/download/LoadMap$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$b;->b()J

    move-result-wide v5

    move-object/from16 v7, p1

    invoke-interface {v7, v5, v6}, Lp1/c;->getBlockUrls(J)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->a(J)J

    move-result-wide v9

    sub-long/2addr v5, v9

    if-eqz v8, :cond_21f

    array-length v0, v8

    if-lez v0, :cond_21f

    const/4 v0, 0x0

    move v9, v0

    :goto_34
    array-length v0, v8

    if-ge v9, v0, :cond_213

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_20d

    new-instance v10, Lcn/kuaipan/android/kss/download/a$a;

    invoke-direct {v10}, Lcn/kuaipan/android/kss/download/a$a;-><init>()V

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v10, v0}, Lcn/kuaipan/android/kss/download/a$a;->b(Lcn/kuaipan/android/kss/download/a$a;Lcn/kuaipan/android/kss/TransferStep;)V

    :try_start_47
    invoke-virtual {v3}, Lp1/h;->a()V

    aget-object v0, v8, v9

    new-instance v15, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v13, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v15, v13, v0, v3}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lp1/h;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_1b0
    .catchall {:try_start_47 .. :try_end_53} :catchall_1ac

    const-wide/16 v13, 0x0

    cmp-long v16, v5, v13

    if-lez v16, :cond_8a

    :try_start_59
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v12

    const-string v13, "Partial-Download"

    const-string v14, "supported"

    invoke-interface {v12, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v12

    const-string v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v13, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lp1/h;->b(J)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_86} :catch_19d
    .catchall {:try_start_59 .. :try_end_86} :catchall_87

    goto :goto_8a

    :catchall_87
    move-exception v0

    goto/16 :goto_1ae

    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v14, p0

    iget-object v13, v14, Lcn/kuaipan/android/kss/download/a;->b:Lm1/g;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_19d
    .catchall {:try_start_8a .. :try_end_92} :catchall_197

    move-object/from16 v23, v3

    const/4 v3, 0x4

    move-wide/from16 v24, v5

    move-object/from16 v5, p4

    :try_start_99
    invoke-virtual {v13, v15, v3, v5}, Lm1/g;->b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;

    move-result-object v3
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_18f
    .catchall {:try_start_99 .. :try_end_9d} :catchall_197

    :try_start_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v21, v19, v11

    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object v6
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_dc
    .catchall {:try_start_9d .. :try_end_a7} :catchall_d7

    if-eqz v6, :cond_be

    :try_start_a9
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_be

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b7} :catch_dc
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_ba

    move-wide/from16 v26, v16

    goto :goto_c0

    :catchall_ba
    move-exception v0

    :goto_bb
    move-object v12, v3

    goto/16 :goto_1fc

    :cond_be
    const-wide/16 v26, 0x0

    :goto_c0
    :try_start_c0
    invoke-virtual {v3}, Lm1/f;->e()I

    move-result v6

    invoke-virtual {v3}, Lm1/f;->c()Ljava/lang/Throwable;

    move-result-object v28
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c8} :catch_dc
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_d7

    const-string v13, ""

    if-eqz v28, :cond_e5

    :try_start_cc
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v29, v16

    goto :goto_e7

    :catchall_d7
    move-exception v0

    move-object/from16 v30, v15

    goto/16 :goto_187

    :catch_dc
    move-exception v0

    move-object/from16 v5, p5

    move/from16 v31, v9

    move-object/from16 v30, v15

    goto/16 :goto_18c

    :cond_e5
    move-object/from16 v29, v13

    :goto_e7
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v16
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_eb} :catch_dc
    .catchall {:try_start_cc .. :try_end_eb} :catchall_d7

    move-object v5, v13

    move-object/from16 v13, v16

    move-object v14, v0

    move-object/from16 v30, v15

    move-wide/from16 v15, v21

    move-wide/from16 v17, v26

    move/from16 v19, v6

    move-object/from16 v20, v29

    :try_start_f9
    invoke-virtual/range {v13 .. v20}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_181
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_17f

    if-nez v28, :cond_133

    :try_start_fe
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v15

    new-instance v14, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_104} :catch_12f
    .catchall {:try_start_fe .. :try_end_104} :catchall_17f

    const/16 v28, 0x0

    move-object v13, v14

    move-object v7, v14

    move-object v14, v0

    move/from16 v31, v9

    move-object v9, v15

    move-wide v15, v11

    move-wide/from16 v17, v21

    move-wide/from16 v19, v26

    move/from16 v21, v6

    move/from16 v22, v28

    :try_start_115
    invoke-direct/range {v13 .. v22}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    invoke-virtual {v9, v7}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_157

    const/16 v7, 0xce

    if-eq v6, v7, :cond_157

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v7

    invoke-static {v0, v6, v5}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    goto :goto_157

    :catch_12f
    move-exception v0

    move/from16 v31, v9

    goto :goto_17c

    :cond_133
    move/from16 v31, v9

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v5

    new-instance v7, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    const/16 v20, 0x0

    move-object v13, v7

    move-object v14, v0

    move-wide v15, v11

    move-wide/from16 v17, v21

    move-object/from16 v19, v28

    invoke-direct/range {v13 .. v20}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    invoke-virtual {v5, v7}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    move-result-object v5

    move-object/from16 v13, v29

    invoke-static {v0, v6, v13}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    :cond_157
    :goto_157
    invoke-static {v10}, Lcn/kuaipan/android/kss/download/a$a;->a(Lcn/kuaipan/android/kss/download/a$a;)Lcn/kuaipan/android/kss/TransferStep;

    move-result-object v0

    invoke-static {v3, v0}, La/b;->c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_15e} :catch_17b
    .catchall {:try_start_115 .. :try_end_15e} :catchall_17f

    move-object/from16 v5, p5

    :try_start_160
    invoke-static {v3, v1, v4, v5, v10}, Lcn/kuaipan/android/kss/download/a;->d(Lm1/f;Lq1/c;Lcn/kuaipan/android/kss/download/b;Ljava/util/concurrent/atomic/AtomicInteger;Lcn/kuaipan/android/kss/download/a$a;)V

    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_VERIFY_FILE:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v10, v0}, Lcn/kuaipan/android/kss/download/a$a;->b(Lcn/kuaipan/android/kss/download/a$a;Lcn/kuaipan/android/kss/TransferStep;)V

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->d(Lq1/c;Z)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16c} :catch_174
    .catchall {:try_start_160 .. :try_end_16c} :catchall_176

    invoke-static {v3}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    goto/16 :goto_217

    :catch_174
    move-exception v0

    goto :goto_18c

    :catchall_176
    move-exception v0

    move-object/from16 v15, v30

    goto/16 :goto_bb

    :catch_17b
    move-exception v0

    :goto_17c
    move-object/from16 v5, p5

    goto :goto_18c

    :catchall_17f
    move-exception v0

    goto :goto_187

    :catch_181
    move-exception v0

    move-object/from16 v5, p5

    move/from16 v31, v9

    goto :goto_18c

    :goto_187
    move-object v12, v3

    move-object/from16 v15, v30

    goto/16 :goto_1fc

    :goto_18c
    move-object/from16 v12, v30

    goto :goto_1bb

    :catch_18f
    move-exception v0

    move-object/from16 v5, p5

    move/from16 v31, v9

    move-object/from16 v30, v15

    goto :goto_1a8

    :catchall_197
    move-exception v0

    move-object/from16 v30, v15

    move-object/from16 v15, v30

    goto :goto_1ae

    :catch_19d
    move-exception v0

    move-object/from16 v23, v3

    move-wide/from16 v24, v5

    move/from16 v31, v9

    move-object/from16 v30, v15

    move-object/from16 v5, p5

    :goto_1a8
    move-object/from16 v12, v30

    const/4 v3, 0x0

    goto :goto_1bb

    :catchall_1ac
    move-exception v0

    const/4 v15, 0x0

    :goto_1ae
    const/4 v12, 0x0

    goto :goto_1fc

    :catch_1b0
    move-exception v0

    move-object/from16 v23, v3

    move-wide/from16 v24, v5

    move/from16 v31, v9

    move-object/from16 v5, p5

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_1bb
    :try_start_1bb
    invoke-static {v0}, La/b;->F(Ljava/lang/Throwable;)V

    invoke-static {v0}, La/b;->N(Ljava/lang/Exception;)Z

    move-result v6

    if-nez v6, :cond_1e6

    array-length v6, v8
    :try_end_1c5
    .catchall {:try_start_1bb .. :try_end_1c5} :catchall_1f8

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v7, v31

    if-lt v7, v6, :cond_1cc

    goto :goto_1e6

    :cond_1cc
    if-eqz v12, :cond_1d6

    invoke-virtual {v12}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_1d9

    :cond_1d6
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    :goto_1d9
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    add-int/lit8 v9, v7, 0x1

    move-object/from16 v7, p1

    move-object/from16 v3, v23

    move-wide/from16 v5, v24

    goto/16 :goto_34

    :cond_1e6
    :goto_1e6
    if-nez v3, :cond_1eb

    :try_start_1e8
    const-string v1, "No response."

    goto :goto_1ef

    :cond_1eb
    invoke-virtual {v3}, Lm1/f;->a()Ljava/lang/String;

    move-result-object v1

    :goto_1ef
    invoke-static {v10}, Lcn/kuaipan/android/kss/download/a$a;->a(Lcn/kuaipan/android/kss/download/a$a;)Lcn/kuaipan/android/kss/TransferStep;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0
    :try_end_1f8
    .catchall {:try_start_1e8 .. :try_end_1f8} :catchall_1f8

    :catchall_1f8
    move-exception v0

    move-object v15, v12

    goto/16 :goto_bb

    :goto_1fc
    if-eqz v15, :cond_206

    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_209

    :cond_206
    invoke-static {v12}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    :goto_209
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    throw v0

    :cond_20d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_213
    move-object/from16 v5, p5

    move-object/from16 v23, v3

    :goto_217
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->c()Lcn/kuaipan/android/kss/download/b;

    move-result-object v4

    move-object/from16 v3, v23

    goto/16 :goto_12

    :cond_21f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No available urls to download."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_227
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_22d
    return-void
.end method

.method public final b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V
    .registers 24

    move-object/from16 v1, p1

    const-string v2, "hash"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6
    invoke-interface/range {p5 .. p5}, Lp1/c;->getTotalSize()J

    move-result-wide v5

    move/from16 v0, p2

    invoke-virtual {v1, v0, v5, v6}, Lq1/f;->c(ZJ)V

    new-instance v5, Lcn/kuaipan/android/kss/download/LoadMap;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_10d

    move-object/from16 v0, p3

    move-object/from16 v6, p5

    :try_start_15
    invoke-direct {v5, v6, v0}, Lcn/kuaipan/android/kss/download/LoadMap;-><init>(Lp1/c;Lm1/c;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_10b

    :try_start_18
    iget-object v0, v1, Lq1/f;->a:Ljava/io/File;

    invoke-static {v0}, Lq1/b;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v13, Lq1/b;

    invoke-direct {v13, v0}, Lq1/b;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_108

    :try_start_23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_106

    if-eqz v0, :cond_41

    :try_start_29
    invoke-virtual {v13}, Lq1/b;->b()V

    iget-object v0, v13, Lq1/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v13, v5}, Lq1/b;->c(Lcn/kuaipan/android/kss/download/LoadMap;)Z

    move-result v0

    goto :goto_42

    :cond_41
    move v0, v3

    :goto_42
    if-nez v0, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lq1/f;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-wide v7, v1, Lq1/f;->b:J

    invoke-virtual {v5, v7, v8}, Lcn/kuaipan/android/kss/download/LoadMap;->b(J)V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_a9

    :cond_4f
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Lq1/f;->b()Lq1/c;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Lcn/kuaipan/android/kss/download/LoadMap;->d(Lq1/c;Z)V

    invoke-interface/range {p5 .. p5}, Lp1/c;->getTotalSize()J

    move-result-wide v7

    iget-wide v9, v1, Lq1/f;->b:J
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5c} :catch_fc
    .catchall {:try_start_4f .. :try_end_5c} :catchall_106

    cmp-long v0, v9, v7

    if-eqz v0, :cond_63

    :try_start_60
    invoke-interface {v4, v7, v8}, Lq1/c;->b(J)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_fc
    .catchall {:try_start_60 .. :try_end_63} :catchall_a9

    :cond_63
    :try_start_63
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_106

    move v7, v3

    :goto_6a
    :try_start_6a
    iget-object v0, v5, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    array-length v8, v0

    move v9, v3

    :goto_6e
    const-wide/16 v10, 0x0

    if-ge v9, v8, :cond_8e

    aget-object v3, v0, v9

    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    move-result-wide v16

    cmp-long v16, v16, v10

    if-gtz v16, :cond_8c

    iget-object v3, v3, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    sget-object v12, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_f9

    if-ne v3, v12, :cond_84

    const/4 v12, 0x1

    goto :goto_85

    :cond_84
    const/4 v12, 0x0

    :goto_85
    if-nez v12, :cond_88

    goto :goto_8c

    :cond_88
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_6e

    :cond_8c
    :goto_8c
    const/4 v3, 0x0

    goto :goto_8f

    :cond_8e
    const/4 v3, 0x1

    :goto_8f
    if-nez v3, :cond_d1

    :try_start_91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_a9

    if-nez v0, :cond_cb

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v11, p4

    move-object v12, v14

    :try_start_a0
    invoke-virtual/range {v7 .. v12}, Lcn/kuaipan/android/kss/download/a;->a(Lp1/c;Lq1/c;Lcn/kuaipan/android/kss/download/LoadMap;Lm1/j$a;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_a6
    .catch Ljava/security/InvalidKeyException; {:try_start_a0 .. :try_end_a6} :catch_a7
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_a0 .. :try_end_a6} :catch_ac
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_a9

    goto :goto_be

    :catch_a7
    move-exception v0

    goto :goto_c2

    :catchall_a9
    move-exception v0

    goto/16 :goto_113

    :catch_ac
    move-exception v0

    :try_start_ad
    invoke-static {v0}, La/b;->M(Lcn/kuaipan/android/exception/KscException;)Z

    move-result v7

    if-eqz v7, :cond_c1

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v7

    if-ltz v7, :cond_c1

    const-wide/16 v7, 0x1388

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    :goto_be
    move v7, v3

    const/4 v3, 0x0

    goto :goto_6a

    :cond_c1
    throw v0

    :goto_c2
    const-string v1, "Failed when download kss block."

    sget-object v7, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE_DECODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v0, v1, v7}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0

    :cond_cb
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_d1
    invoke-interface/range {p5 .. p5}, Lp1/c;->getModifyTime()J

    move-result-wide v7

    cmp-long v0, v7, v10

    if-lez v0, :cond_dc

    invoke-virtual {v1, v7, v8}, Lq1/f;->d(J)V
    :try_end_dc
    .catchall {:try_start_ad .. :try_end_dc} :catchall_a9

    :cond_dc
    if-eqz v4, :cond_e1

    :try_start_de
    invoke-interface {v4}, Lq1/c;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e1

    :catchall_e1
    :cond_e1
    if-eqz v3, :cond_e9

    iget-object v0, v13, Lq1/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_f8

    :cond_e9
    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v13, Lq1/b;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lq1/b;->e(Lcn/kuaipan/android/kss/download/LoadMap;)V

    invoke-virtual {v13}, Lq1/b;->d()V

    :goto_f8
    return-void

    :catchall_f9
    move-exception v0

    move v3, v7

    goto :goto_113

    :catch_fc
    move-exception v0

    :try_start_fd
    const-string v1, "Local IO error, when prepare kss download."

    sget-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {v0, v1, v3}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v0

    goto :goto_112

    :catchall_108
    move-exception v0

    move-object v13, v4

    goto :goto_112

    :catchall_10b
    move-exception v0

    goto :goto_110

    :catchall_10d
    move-exception v0

    move-object/from16 v6, p5

    :goto_110
    move-object v5, v4

    move-object v13, v5

    :goto_112
    const/4 v3, 0x0

    :goto_113
    if-eqz v4, :cond_118

    :try_start_115
    invoke-interface {v4}, Lq1/c;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_118

    :catchall_118
    :cond_118
    if-eqz v13, :cond_133

    if-nez v3, :cond_12e

    if-eqz v5, :cond_133

    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v13, Lq1/b;->b:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Lq1/b;->e(Lcn/kuaipan/android/kss/download/LoadMap;)V

    invoke-virtual {v13}, Lq1/b;->d()V

    goto :goto_133

    :cond_12e
    iget-object v1, v13, Lq1/b;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_133
    :goto_133
    throw v0
.end method
