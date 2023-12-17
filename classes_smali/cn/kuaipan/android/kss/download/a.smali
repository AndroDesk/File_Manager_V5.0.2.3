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
.method public constructor <init>(Lm1/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcn/kuaipan/android/kss/download/a;->b:Lm1/g;

    .line 6
    return-void
.end method

.method public static c(Lm1/f;)V
    .registers 3

    .line 1
    if-eqz p0, :cond_42

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lm1/f;->g()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 6
    goto :goto_42

    .line 7
    :catchall_6
    move-exception p0

    .line 8
    const/4 v0, 0x0

    .line 9
    instance-of v1, p0, Ljava/lang/InterruptedException;

    .line 11
    if-eqz v1, :cond_10

    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, Ljava/lang/InterruptedException;

    .line 16
    goto :goto_3e

    .line 17
    :cond_10
    sget-boolean v1, La/b;->f:Z

    .line 19
    if-eqz v1, :cond_15

    .line 21
    goto :goto_3e

    .line 22
    :cond_15
    instance-of v1, p0, Ljava/nio/channels/ClosedByInterruptException;

    .line 24
    if-eqz v1, :cond_26

    .line 26
    new-instance v0, Ljava/lang/InterruptedException;

    .line 28
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 34
    move-result-object p0

    .line 35
    move-object v0, p0

    .line 36
    check-cast v0, Ljava/lang/InterruptedException;

    .line 38
    goto :goto_3e

    .line 39
    :cond_26
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    .line 41
    if-eqz v1, :cond_3e

    .line 43
    instance-of v1, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 45
    if-nez v1, :cond_3e

    .line 47
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    .line 49
    if-nez v1, :cond_3e

    .line 51
    new-instance v0, Ljava/lang/InterruptedException;

    .line 53
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 59
    move-result-object p0

    .line 60
    move-object v0, p0

    .line 61
    check-cast v0, Ljava/lang/InterruptedException;

    .line 63
    :cond_3e
    :goto_3e
    if-nez v0, :cond_41

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    throw v0

    .line 67
    :cond_42
    :goto_42
    return-void
.end method

.method public static d(Lm1/f;Lq1/c;Lcn/kuaipan/android/kss/download/b;Ljava/util/concurrent/atomic/AtomicInteger;Lcn/kuaipan/android/kss/download/a$a;)V
    .registers 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    invoke-virtual {p0}, Lm1/f;->e()I

    .line 6
    move-result v2

    .line 7
    const/16 v3, 0xc8

    .line 9
    if-eq v2, v3, :cond_15

    .line 11
    invoke-virtual {p0}, Lm1/f;->e()I

    .line 14
    move-result v2

    .line 15
    const/16 v3, 0xce

    .line 17
    if-ne v2, v3, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v2, 0x0

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    :goto_15
    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_GET_CONTENT:Lcn/kuaipan/android/kss/TransferStep;

    .line 24
    iput-object v2, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    .line 26
    invoke-virtual {p0}, Lm1/f;->b()Ljava/io/InputStream;

    .line 29
    move-result-object v2

    .line 30
    :goto_1d
    if-eqz v2, :cond_48

    .line 32
    sget-object p0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    .line 34
    iput-object p0, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    .line 36
    const/high16 p0, 0x80000

    .line 38
    new-array p0, p0, [B

    .line 40
    :goto_27
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 43
    move-result v3

    .line 44
    if-ltz v3, :cond_40

    .line 46
    const/4 v1, 0x1

    .line 47
    sget-object v4, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_WRITE_FILE:Lcn/kuaipan/android/kss/TransferStep;

    .line 49
    iput-object v4, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;

    .line 51
    if-lez v3, :cond_3b

    .line 53
    invoke-interface {p1, p0, v3, p2}, Lq1/c;->a([BILcn/kuaipan/android/kss/download/b;)I

    .line 56
    move-result v4

    .line 57
    if-ge v4, v3, :cond_3b

    .line 59
    goto :goto_40

    .line 60
    :cond_3b
    sget-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_READ_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    .line 62
    iput-object v3, p4, Lcn/kuaipan/android/kss/download/a$a;->a:Lcn/kuaipan/android/kss/TransferStep;
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_46

    .line 64
    goto :goto_27

    .line 65
    :cond_40
    :goto_40
    if-eqz v1, :cond_45

    .line 67
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 70
    :cond_45
    return-void

    .line 71
    :catchall_46
    move-exception p0

    .line 72
    goto :goto_66

    .line 73
    :cond_48
    :try_start_48
    new-instance p1, Lcn/kuaipan/android/exception/KscRuntimeException;

    .line 75
    const p2, 0x7a128

    .line 78
    new-instance p4, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v2, "Not meet exception, but no response.\n"

    .line 85
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-direct {p1, p2, p0}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    .line 102
    throw p1
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_46

    .line 103
    :goto_66
    if-eqz v1, :cond_6b

    .line 105
    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 108
    :cond_6b
    throw p0
.end method


# virtual methods
.method public final a(Lp1/c;Lq1/c;Lcn/kuaipan/android/kss/download/LoadMap;Lm1/j$a;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 38

    .line 1
    move-object/from16 v1, p2

    .line 3
    move-object/from16 v2, p3

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->c()Lcn/kuaipan/android/kss/download/b;

    .line 8
    move-result-object v0

    .line 9
    new-instance v3, Lp1/h;

    .line 11
    invoke-interface/range {p1 .. p1}, Lp1/c;->getSecureKey()[B

    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v3, v4}, Lp1/h;-><init>([B)V

    .line 18
    move-object v4, v0

    .line 19
    :goto_12
    if-eqz v4, :cond_22d

    .line 21
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_227

    .line 27
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->a()Lcn/kuaipan/android/kss/download/LoadMap$b;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcn/kuaipan/android/kss/download/LoadMap$b;->b()J

    .line 34
    move-result-wide v5

    .line 35
    move-object/from16 v7, p1

    .line 37
    invoke-interface {v7, v5, v6}, Lp1/c;->getBlockUrls(J)[Ljava/lang/String;

    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v2, v5, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->a(J)J

    .line 44
    move-result-wide v9

    .line 45
    sub-long/2addr v5, v9

    .line 46
    if-eqz v8, :cond_21f

    .line 48
    array-length v0, v8

    .line 49
    if-lez v0, :cond_21f

    .line 51
    const/4 v0, 0x0

    .line 52
    move v9, v0

    .line 53
    :goto_34
    array-length v0, v8

    .line 54
    if-ge v9, v0, :cond_213

    .line 56
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_20d

    .line 62
    new-instance v10, Lcn/kuaipan/android/kss/download/a$a;

    .line 64
    invoke-direct {v10}, Lcn/kuaipan/android/kss/download/a$a;-><init>()V

    .line 67
    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    .line 69
    invoke-static {v10, v0}, Lcn/kuaipan/android/kss/download/a$a;->b(Lcn/kuaipan/android/kss/download/a$a;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 72
    :try_start_47
    invoke-virtual {v3}, Lp1/h;->a()V

    .line 75
    aget-object v0, v8, v9

    .line 77
    new-instance v15, Lcn/kuaipan/android/http/KscHttpRequest;

    .line 79
    sget-object v13, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->GET:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    .line 81
    invoke-direct {v15, v13, v0, v3}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Ljava/lang/String;Lp1/h;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_1b0
    .catchall {:try_start_47 .. :try_end_53} :catchall_1ac

    .line 84
    const-wide/16 v13, 0x0

    .line 86
    cmp-long v16, v5, v13

    .line 88
    if-lez v16, :cond_8a

    .line 90
    :try_start_59
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 93
    move-result-object v12

    .line 94
    const-string v13, "Partial-Download"

    .line 96
    const-string v14, "supported"

    .line 98
    invoke-interface {v12, v13, v14}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 104
    move-result-object v12

    .line 105
    const-string v13, "Range"

    .line 107
    new-instance v14, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v11, "bytes="

    .line 114
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string v11, "-"

    .line 122
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v11

    .line 129
    invoke-interface {v12, v13, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3, v5, v6}, Lp1/h;->b(J)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_86} :catch_19d
    .catchall {:try_start_59 .. :try_end_86} :catchall_87

    .line 135
    goto :goto_8a

    .line 136
    :catchall_87
    move-exception v0

    .line 137
    goto/16 :goto_1ae

    .line 139
    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    move-result-wide v11

    .line 143
    move-object/from16 v14, p0

    .line 145
    iget-object v13, v14, Lcn/kuaipan/android/kss/download/a;->b:Lm1/g;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_19d
    .catchall {:try_start_8a .. :try_end_92} :catchall_197

    .line 147
    move-object/from16 v23, v3

    .line 149
    const/4 v3, 0x4

    .line 150
    move-wide/from16 v24, v5

    .line 152
    move-object/from16 v5, p4

    .line 154
    :try_start_99
    invoke-virtual {v13, v15, v3, v5}, Lm1/g;->b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;

    .line 157
    move-result-object v3
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_18f
    .catchall {:try_start_99 .. :try_end_9d} :catchall_197

    .line 158
    :try_start_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    move-result-wide v19

    .line 162
    sub-long v21, v19, v11

    .line 164
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 167
    move-result-object v6
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_dc
    .catchall {:try_start_9d .. :try_end_a7} :catchall_d7

    .line 168
    if-eqz v6, :cond_be

    .line 170
    :try_start_a9
    invoke-virtual {v3}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    .line 173
    move-result-object v6

    .line 174
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 177
    move-result-object v6

    .line 178
    if-eqz v6, :cond_be

    .line 180
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    .line 183
    move-result-wide v16
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b7} :catch_dc
    .catchall {:try_start_a9 .. :try_end_b7} :catchall_ba

    .line 184
    move-wide/from16 v26, v16

    .line 186
    goto :goto_c0

    .line 187
    :catchall_ba
    move-exception v0

    .line 188
    :goto_bb
    move-object v12, v3

    .line 189
    goto/16 :goto_1fc

    .line 191
    :cond_be
    const-wide/16 v26, 0x0

    .line 193
    :goto_c0
    :try_start_c0
    invoke-virtual {v3}, Lm1/f;->e()I

    .line 196
    move-result v6

    .line 197
    invoke-virtual {v3}, Lm1/f;->c()Ljava/lang/Throwable;

    .line 200
    move-result-object v28
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c8} :catch_dc
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_d7

    .line 201
    const-string v13, ""

    .line 203
    if-eqz v28, :cond_e5

    .line 205
    :try_start_cc
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    move-result-object v16

    .line 209
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 212
    move-result-object v16

    .line 213
    move-object/from16 v29, v16

    .line 215
    goto :goto_e7

    .line 216
    :catchall_d7
    move-exception v0

    .line 217
    move-object/from16 v30, v15

    .line 219
    goto/16 :goto_187

    .line 221
    :catch_dc
    move-exception v0

    .line 222
    move-object/from16 v5, p5

    .line 224
    move/from16 v31, v9

    .line 226
    move-object/from16 v30, v15

    .line 228
    goto/16 :goto_18c

    .line 230
    :cond_e5
    move-object/from16 v29, v13

    .line 232
    :goto_e7
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    .line 235
    move-result-object v16
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_eb} :catch_dc
    .catchall {:try_start_cc .. :try_end_eb} :catchall_d7

    .line 236
    move-object v5, v13

    .line 237
    move-object/from16 v13, v16

    .line 239
    move-object v14, v0

    .line 240
    move-object/from16 v30, v15

    .line 242
    move-wide/from16 v15, v21

    .line 244
    move-wide/from16 v17, v26

    .line 246
    move/from16 v19, v6

    .line 248
    move-object/from16 v20, v29

    .line 250
    :try_start_f9
    invoke-virtual/range {v13 .. v20}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_181
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_17f

    .line 253
    if-nez v28, :cond_133

    .line 255
    :try_start_fe
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 258
    move-result-object v15

    .line 259
    new-instance v14, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_104} :catch_12f
    .catchall {:try_start_fe .. :try_end_104} :catchall_17f

    .line 261
    const/16 v28, 0x0

    .line 263
    move-object v13, v14

    .line 264
    move-object v7, v14

    .line 265
    move-object v14, v0

    .line 266
    move/from16 v31, v9

    .line 268
    move-object v9, v15

    .line 269
    move-wide v15, v11

    .line 270
    move-wide/from16 v17, v21

    .line 272
    move-wide/from16 v19, v26

    .line 274
    move/from16 v21, v6

    .line 276
    move/from16 v22, v28

    .line 278
    :try_start_115
    invoke-direct/range {v13 .. v22}, Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;-><init>(Ljava/lang/String;JJJII)V

    .line 281
    invoke-virtual {v9, v7}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetSuccessEvent(Lcom/xiaomi/micloudsdk/stat/NetSuccessStatParam;)V

    .line 284
    const/16 v7, 0xc8

    .line 286
    if-eq v6, v7, :cond_157

    .line 288
    const/16 v7, 0xce

    .line 290
    if-eq v6, v7, :cond_157

    .line 292
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 295
    move-result-object v7

    .line 296
    invoke-static {v0, v6, v5}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v7, v0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    .line 303
    goto :goto_157

    .line 304
    :catch_12f
    move-exception v0

    .line 305
    move/from16 v31, v9

    .line 307
    goto :goto_17c

    .line 308
    :cond_133
    move/from16 v31, v9

    .line 310
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 313
    move-result-object v5

    .line 314
    new-instance v7, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;

    .line 316
    const/16 v20, 0x0

    .line 318
    move-object v13, v7

    .line 319
    move-object v14, v0

    .line 320
    move-wide v15, v11

    .line 321
    move-wide/from16 v17, v21

    .line 323
    move-object/from16 v19, v28

    .line 325
    invoke-direct/range {v13 .. v20}, Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;-><init>(Ljava/lang/String;JJLjava/lang/Throwable;I)V

    .line 328
    invoke-virtual {v5, v7}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addNetFailedEvent(Lcom/xiaomi/micloudsdk/stat/NetFailedStatParam;)V

    .line 331
    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;

    .line 334
    move-result-object v5

    .line 335
    move-object/from16 v13, v29

    .line 337
    invoke-static {v0, v6, v13}, Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;->createDownloadFileFailedStatParam(Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;

    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v5, v0}, Lcom/xiaomi/micloudsdk/stat/MiCloudNetEventStatInjector;->addAddDownloadFileFailedEvent(Lcom/xiaomi/micloudsdk/stat/DownloadFileFailedStatParam;)V

    .line 344
    :cond_157
    :goto_157
    invoke-static {v10}, Lcn/kuaipan/android/kss/download/a$a;->a(Lcn/kuaipan/android/kss/download/a$a;)Lcn/kuaipan/android/kss/TransferStep;

    .line 347
    move-result-object v0

    .line 348
    invoke-static {v3, v0}, La/b;->c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_15e} :catch_17b
    .catchall {:try_start_115 .. :try_end_15e} :catchall_17f

    .line 351
    move-object/from16 v5, p5

    .line 353
    :try_start_160
    invoke-static {v3, v1, v4, v5, v10}, Lcn/kuaipan/android/kss/download/a;->d(Lm1/f;Lq1/c;Lcn/kuaipan/android/kss/download/b;Ljava/util/concurrent/atomic/AtomicInteger;Lcn/kuaipan/android/kss/download/a$a;)V

    .line 356
    sget-object v0, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_VERIFY_FILE:Lcn/kuaipan/android/kss/TransferStep;

    .line 358
    invoke-static {v10, v0}, Lcn/kuaipan/android/kss/download/a$a;->b(Lcn/kuaipan/android/kss/download/a$a;Lcn/kuaipan/android/kss/TransferStep;)V

    .line 361
    const/4 v6, 0x1

    .line 362
    invoke-virtual {v2, v1, v6}, Lcn/kuaipan/android/kss/download/LoadMap;->d(Lq1/c;Z)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16c} :catch_174
    .catchall {:try_start_160 .. :try_end_16c} :catchall_176

    .line 365
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    .line 368
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    .line 371
    goto/16 :goto_217

    .line 373
    :catch_174
    move-exception v0

    .line 374
    goto :goto_18c

    .line 375
    :catchall_176
    move-exception v0

    .line 376
    move-object/from16 v15, v30

    .line 378
    goto/16 :goto_bb

    .line 380
    :catch_17b
    move-exception v0

    .line 381
    :goto_17c
    move-object/from16 v5, p5

    .line 383
    goto :goto_18c

    .line 384
    :catchall_17f
    move-exception v0

    .line 385
    goto :goto_187

    .line 386
    :catch_181
    move-exception v0

    .line 387
    move-object/from16 v5, p5

    .line 389
    move/from16 v31, v9

    .line 391
    goto :goto_18c

    .line 392
    :goto_187
    move-object v12, v3

    .line 393
    move-object/from16 v15, v30

    .line 395
    goto/16 :goto_1fc

    .line 397
    :goto_18c
    move-object/from16 v12, v30

    .line 399
    goto :goto_1bb

    .line 400
    :catch_18f
    move-exception v0

    .line 401
    move-object/from16 v5, p5

    .line 403
    move/from16 v31, v9

    .line 405
    move-object/from16 v30, v15

    .line 407
    goto :goto_1a8

    .line 408
    :catchall_197
    move-exception v0

    .line 409
    move-object/from16 v30, v15

    .line 411
    move-object/from16 v15, v30

    .line 413
    goto :goto_1ae

    .line 414
    :catch_19d
    move-exception v0

    .line 415
    move-object/from16 v23, v3

    .line 417
    move-wide/from16 v24, v5

    .line 419
    move/from16 v31, v9

    .line 421
    move-object/from16 v30, v15

    .line 423
    move-object/from16 v5, p5

    .line 425
    :goto_1a8
    move-object/from16 v12, v30

    .line 427
    const/4 v3, 0x0

    .line 428
    goto :goto_1bb

    .line 429
    :catchall_1ac
    move-exception v0

    .line 430
    const/4 v15, 0x0

    .line 431
    :goto_1ae
    const/4 v12, 0x0

    .line 432
    goto :goto_1fc

    .line 433
    :catch_1b0
    move-exception v0

    .line 434
    move-object/from16 v23, v3

    .line 436
    move-wide/from16 v24, v5

    .line 438
    move/from16 v31, v9

    .line 440
    move-object/from16 v5, p5

    .line 442
    const/4 v3, 0x0

    .line 443
    const/4 v12, 0x0

    .line 444
    :goto_1bb
    :try_start_1bb
    invoke-static {v0}, La/b;->F(Ljava/lang/Throwable;)V

    .line 447
    invoke-static {v0}, La/b;->N(Ljava/lang/Exception;)Z

    .line 450
    move-result v6

    .line 451
    if-nez v6, :cond_1e6

    .line 453
    array-length v6, v8
    :try_end_1c5
    .catchall {:try_start_1bb .. :try_end_1c5} :catchall_1f8

    .line 454
    const/4 v7, 0x1

    .line 455
    sub-int/2addr v6, v7

    .line 456
    move/from16 v7, v31

    .line 458
    if-lt v7, v6, :cond_1cc

    .line 460
    goto :goto_1e6

    .line 461
    :cond_1cc
    if-eqz v12, :cond_1d6

    .line 463
    invoke-virtual {v12}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 466
    move-result-object v0

    .line 467
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 470
    goto :goto_1d9

    .line 471
    :cond_1d6
    invoke-static {v3}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    .line 474
    :goto_1d9
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    .line 477
    add-int/lit8 v9, v7, 0x1

    .line 479
    move-object/from16 v7, p1

    .line 481
    move-object/from16 v3, v23

    .line 483
    move-wide/from16 v5, v24

    .line 485
    goto/16 :goto_34

    .line 487
    :cond_1e6
    :goto_1e6
    if-nez v3, :cond_1eb

    .line 489
    :try_start_1e8
    const-string v1, "No response."

    .line 491
    goto :goto_1ef

    .line 492
    :cond_1eb
    invoke-virtual {v3}, Lm1/f;->a()Ljava/lang/String;

    .line 495
    move-result-object v1

    .line 496
    :goto_1ef
    invoke-static {v10}, Lcn/kuaipan/android/kss/download/a$a;->a(Lcn/kuaipan/android/kss/download/a$a;)Lcn/kuaipan/android/kss/TransferStep;

    .line 499
    move-result-object v2

    .line 500
    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 503
    move-result-object v0

    .line 504
    throw v0
    :try_end_1f8
    .catchall {:try_start_1e8 .. :try_end_1f8} :catchall_1f8

    .line 505
    :catchall_1f8
    move-exception v0

    .line 506
    move-object v15, v12

    .line 507
    goto/16 :goto_bb

    .line 509
    :goto_1fc
    if-eqz v15, :cond_206

    .line 511
    invoke-virtual {v15}, Lcn/kuaipan/android/http/KscHttpRequest;->e()Lorg/apache/http/client/methods/HttpUriRequest;

    .line 514
    move-result-object v1

    .line 515
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 518
    goto :goto_209

    .line 519
    :cond_206
    invoke-static {v12}, Lcn/kuaipan/android/kss/download/a;->c(Lm1/f;)V

    .line 522
    :goto_209
    invoke-virtual {v4}, Lcn/kuaipan/android/kss/download/b;->b()V

    .line 525
    throw v0

    .line 526
    :cond_20d
    new-instance v0, Ljava/lang/InterruptedException;

    .line 528
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 531
    throw v0

    .line 532
    :cond_213
    move-object/from16 v5, p5

    .line 534
    move-object/from16 v23, v3

    .line 536
    :goto_217
    invoke-virtual/range {p3 .. p3}, Lcn/kuaipan/android/kss/download/LoadMap;->c()Lcn/kuaipan/android/kss/download/b;

    .line 539
    move-result-object v4

    .line 540
    move-object/from16 v3, v23

    .line 542
    goto/16 :goto_12

    .line 544
    :cond_21f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 546
    const-string v1, "No available urls to download."

    .line 548
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 551
    throw v0

    .line 552
    :cond_227
    new-instance v0, Ljava/lang/InterruptedException;

    .line 554
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 557
    throw v0

    .line 558
    :cond_22d
    return-void
.end method

.method public final b(Lq1/f;ZLm1/c;Lm1/j$a;Lp1/c;)V
    .registers 24

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v2, "hash"

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_6
    invoke-interface/range {p5 .. p5}, Lp1/c;->getTotalSize()J

    .line 10
    move-result-wide v5

    .line 11
    move/from16 v0, p2

    .line 13
    invoke-virtual {v1, v0, v5, v6}, Lq1/f;->c(ZJ)V

    .line 16
    new-instance v5, Lcn/kuaipan/android/kss/download/LoadMap;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_10d

    .line 18
    move-object/from16 v0, p3

    .line 20
    move-object/from16 v6, p5

    .line 22
    :try_start_15
    invoke-direct {v5, v6, v0}, Lcn/kuaipan/android/kss/download/LoadMap;-><init>(Lp1/c;Lm1/c;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_10b

    .line 25
    :try_start_18
    iget-object v0, v1, Lq1/f;->a:Ljava/io/File;

    .line 27
    invoke-static {v0}, Lq1/b;->a(Ljava/io/File;)Ljava/io/File;

    .line 30
    move-result-object v0

    .line 31
    new-instance v13, Lq1/b;

    .line 33
    invoke-direct {v13, v0}, Lq1/b;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_108

    .line 36
    :try_start_23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    move-result v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_106

    .line 40
    if-eqz v0, :cond_41

    .line 42
    :try_start_29
    invoke-virtual {v13}, Lq1/b;->b()V

    .line 45
    iget-object v0, v13, Lq1/b;->b:Landroid/os/Bundle;

    .line 47
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    .line 54
    move-result-object v7

    .line 55
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_41

    .line 61
    invoke-virtual {v13, v5}, Lq1/b;->c(Lcn/kuaipan/android/kss/download/LoadMap;)Z

    .line 64
    move-result v0

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move v0, v3

    .line 67
    :goto_42
    if-nez v0, :cond_4f

    .line 69
    invoke-virtual/range {p1 .. p1}, Lq1/f;->a()Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4f

    .line 75
    iget-wide v7, v1, Lq1/f;->b:J

    .line 77
    invoke-virtual {v5, v7, v8}, Lcn/kuaipan/android/kss/download/LoadMap;->b(J)V
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_a9

    .line 80
    :cond_4f
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Lq1/f;->b()Lq1/c;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v5, v4, v3}, Lcn/kuaipan/android/kss/download/LoadMap;->d(Lq1/c;Z)V

    .line 87
    invoke-interface/range {p5 .. p5}, Lp1/c;->getTotalSize()J

    .line 90
    move-result-wide v7

    .line 91
    iget-wide v9, v1, Lq1/f;->b:J
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5c} :catch_fc
    .catchall {:try_start_4f .. :try_end_5c} :catchall_106

    .line 93
    cmp-long v0, v9, v7

    .line 95
    if-eqz v0, :cond_63

    .line 97
    :try_start_60
    invoke-interface {v4, v7, v8}, Lq1/c;->b(J)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_fc
    .catchall {:try_start_60 .. :try_end_63} :catchall_a9

    .line 100
    :cond_63
    :try_start_63
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    const/4 v15, 0x3

    .line 103
    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_106

    .line 106
    move v7, v3

    .line 107
    :goto_6a
    :try_start_6a
    iget-object v0, v5, Lcn/kuaipan/android/kss/download/LoadMap;->c:[Lcn/kuaipan/android/kss/download/LoadMap$a;

    .line 109
    array-length v8, v0

    .line 110
    move v9, v3

    .line 111
    :goto_6e
    const-wide/16 v10, 0x0

    .line 113
    if-ge v9, v8, :cond_8e

    .line 115
    aget-object v3, v0, v9

    .line 117
    invoke-virtual {v3}, Lcn/kuaipan/android/kss/download/LoadMap$a;->d()J

    .line 120
    move-result-wide v16

    .line 121
    cmp-long v16, v16, v10

    .line 123
    if-gtz v16, :cond_8c

    .line 125
    iget-object v3, v3, Lcn/kuaipan/android/kss/download/LoadMap$a;->e:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;

    .line 127
    sget-object v12, Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;->VERIFIED:Lcn/kuaipan/android/kss/download/LoadMap$VerifyState;
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_f9

    .line 129
    if-ne v3, v12, :cond_84

    .line 131
    const/4 v12, 0x1

    .line 132
    goto :goto_85

    .line 133
    :cond_84
    const/4 v12, 0x0

    .line 134
    :goto_85
    if-nez v12, :cond_88

    .line 136
    goto :goto_8c

    .line 137
    :cond_88
    add-int/lit8 v9, v9, 0x1

    .line 139
    const/4 v3, 0x0

    .line 140
    goto :goto_6e

    .line 141
    :cond_8c
    :goto_8c
    const/4 v3, 0x0

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    const/4 v3, 0x1

    .line 144
    :goto_8f
    if-nez v3, :cond_d1

    .line 146
    :try_start_91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 149
    move-result v0
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_a9

    .line 150
    if-nez v0, :cond_cb

    .line 152
    move-object/from16 v7, p0

    .line 154
    move-object/from16 v8, p5

    .line 156
    move-object v9, v4

    .line 157
    move-object v10, v5

    .line 158
    move-object/from16 v11, p4

    .line 160
    move-object v12, v14

    .line 161
    :try_start_a0
    invoke-virtual/range {v7 .. v12}, Lcn/kuaipan/android/kss/download/a;->a(Lp1/c;Lq1/c;Lcn/kuaipan/android/kss/download/LoadMap;Lm1/j$a;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 164
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_a6
    .catch Ljava/security/InvalidKeyException; {:try_start_a0 .. :try_end_a6} :catch_a7
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_a0 .. :try_end_a6} :catch_ac
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_a9

    .line 167
    goto :goto_be

    .line 168
    :catch_a7
    move-exception v0

    .line 169
    goto :goto_c2

    .line 170
    :catchall_a9
    move-exception v0

    .line 171
    goto/16 :goto_113

    .line 173
    :catch_ac
    move-exception v0

    .line 174
    :try_start_ad
    invoke-static {v0}, La/b;->M(Lcn/kuaipan/android/exception/KscException;)Z

    .line 177
    move-result v7

    .line 178
    if-eqz v7, :cond_c1

    .line 180
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 183
    move-result v7

    .line 184
    if-ltz v7, :cond_c1

    .line 186
    const-wide/16 v7, 0x1388

    .line 188
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 191
    :goto_be
    move v7, v3

    .line 192
    const/4 v3, 0x0

    .line 193
    goto :goto_6a

    .line 194
    :cond_c1
    throw v0

    .line 195
    :goto_c2
    const-string v1, "Failed when download kss block."

    .line 197
    sget-object v7, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE_DECODE_KEY:Lcn/kuaipan/android/kss/TransferStep;

    .line 199
    invoke-static {v0, v1, v7}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 202
    move-result-object v0

    .line 203
    throw v0

    .line 204
    :cond_cb
    new-instance v0, Ljava/lang/InterruptedException;

    .line 206
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 209
    throw v0

    .line 210
    :cond_d1
    invoke-interface/range {p5 .. p5}, Lp1/c;->getModifyTime()J

    .line 213
    move-result-wide v7

    .line 214
    cmp-long v0, v7, v10

    .line 216
    if-lez v0, :cond_dc

    .line 218
    invoke-virtual {v1, v7, v8}, Lq1/f;->d(J)V
    :try_end_dc
    .catchall {:try_start_ad .. :try_end_dc} :catchall_a9

    .line 221
    :cond_dc
    if-eqz v4, :cond_e1

    .line 223
    :try_start_de
    invoke-interface {v4}, Lq1/c;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e1

    .line 226
    :catchall_e1
    :cond_e1
    if-eqz v3, :cond_e9

    .line 228
    iget-object v0, v13, Lq1/b;->a:Ljava/io/File;

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    goto :goto_f8

    .line 234
    :cond_e9
    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    iget-object v1, v13, Lq1/b;->b:Landroid/os/Bundle;

    .line 240
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v13, v5}, Lq1/b;->e(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 246
    invoke-virtual {v13}, Lq1/b;->d()V

    .line 249
    :goto_f8
    return-void

    .line 250
    :catchall_f9
    move-exception v0

    .line 251
    move v3, v7

    .line 252
    goto :goto_113

    .line 253
    :catch_fc
    move-exception v0

    .line 254
    :try_start_fd
    const-string v1, "Local IO error, when prepare kss download."

    .line 256
    sget-object v3, Lcn/kuaipan/android/kss/TransferStep;->DOWNLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    .line 258
    invoke-static {v0, v1, v3}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 261
    move-result-object v0

    .line 262
    throw v0
    :try_end_106
    .catchall {:try_start_fd .. :try_end_106} :catchall_106

    .line 263
    :catchall_106
    move-exception v0

    .line 264
    goto :goto_112

    .line 265
    :catchall_108
    move-exception v0

    .line 266
    move-object v13, v4

    .line 267
    goto :goto_112

    .line 268
    :catchall_10b
    move-exception v0

    .line 269
    goto :goto_110

    .line 270
    :catchall_10d
    move-exception v0

    .line 271
    move-object/from16 v6, p5

    .line 273
    :goto_110
    move-object v5, v4

    .line 274
    move-object v13, v5

    .line 275
    :goto_112
    const/4 v3, 0x0

    .line 276
    :goto_113
    if-eqz v4, :cond_118

    .line 278
    :try_start_115
    invoke-interface {v4}, Lq1/c;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_118

    .line 281
    :catchall_118
    :cond_118
    if-eqz v13, :cond_133

    .line 283
    if-nez v3, :cond_12e

    .line 285
    if-eqz v5, :cond_133

    .line 287
    invoke-interface/range {p5 .. p5}, Lp1/c;->getHash()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    iget-object v3, v13, Lq1/b;->b:Landroid/os/Bundle;

    .line 293
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v13, v5}, Lq1/b;->e(Lcn/kuaipan/android/kss/download/LoadMap;)V

    .line 299
    invoke-virtual {v13}, Lq1/b;->d()V

    .line 302
    goto :goto_133

    .line 303
    :cond_12e
    iget-object v1, v13, Lq1/b;->a:Ljava/io/File;

    .line 305
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 308
    :cond_133
    :goto_133
    throw v0
.end method
