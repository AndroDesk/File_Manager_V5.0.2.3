.class public final Lr1/f;
.super Ljava/lang/Object;
.source "KssUploader.java"

# interfaces
.implements Lp1/f;


# instance fields
.field public final b:Lr1/l;

.field public final c:Lm1/g;

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm1/g;Lr1/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x10000

    iput-wide v0, p0, Lr1/f;->d:J

    iput-object p2, p0, Lr1/f;->b:Lr1/l;

    iput-object p1, p0, Lr1/f;->c:Lm1/g;

    return-void
.end method

.method public static c(Lr1/h;JJJ)V
    .registers 9

    iget-object v0, p0, Lr1/h;->b:Ljava/lang/String;

    const-string v1, "BLOCK_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-wide p5, p0, Lr1/h;->c:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr1/h;->d:J

    goto :goto_64

    :cond_11
    iget-object v0, p0, Lr1/h;->b:Ljava/lang/String;

    const-string v1, "CONTINUE_UPLOAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    add-long/2addr p1, p3

    sub-long/2addr p5, p1

    iget-wide p3, p0, Lr1/h;->c:J

    cmp-long p3, p3, p1

    if-nez p3, :cond_29

    iget-wide p3, p0, Lr1/h;->d:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_64

    :cond_29
    const-string p3, "Chunk pos is ("

    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-wide v0, p0, Lr1/h;->c:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lr1/h;->d:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), but in process is ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "KssUploader"

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lr1/h;->c:J

    iput-wide p5, p0, Lr1/h;->d:J

    goto :goto_64

    :cond_5f
    iput-wide p1, p0, Lr1/h;->c:J

    sub-long/2addr p5, p1

    iput-wide p5, p0, Lr1/h;->d:J

    :cond_64
    :goto_64
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;JLs1/l;Lp1/h;Lo1/a;Lp1/b$a;Lm1/j$a;Lr1/e;)Lr1/h;
    .registers 33

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p9

    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :goto_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ltz v2, :cond_1e9

    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->reset()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    add-long v1, v1, p2

    const-wide/32 v3, 0x400000

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    const-string v15, "KssUploader"

    if-gez v7, :cond_3a

    const-string v1, "blockSize<0, adjust blockSize to 4M"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v16, v3

    goto :goto_3c

    :cond_3a
    move-wide/from16 v16, v1

    :goto_3c
    iget-wide v1, v8, Lr1/f;->d:J

    sub-long v3, v16, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v13, Lr1/e;->g:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v3, v13, Lr1/e;->h:Lr1/g;

    const-wide/32 v7, 0x10000

    if-eqz v3, :cond_ce

    move-wide/from16 v19, v1

    iget-wide v0, v3, Lr1/g;->d:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_6d

    rem-long v21, v0, v7

    sub-long v0, v0, v21

    iput-wide v0, v3, Lr1/g;->d:J

    sget-wide v4, Lp1/f;->a:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, v3, Lr1/g;->d:J

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v3, Lr1/g;->d:J

    :cond_6d
    iget v0, v3, Lr1/g;->c:I

    if-lez v0, :cond_7d

    iget-boolean v1, v3, Lr1/g;->b:Z

    if-nez v1, :cond_7d

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Lr1/g;->c:I

    :cond_7d
    iget-wide v0, v3, Lr1/g;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_a7

    move-wide/from16 v4, v19

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const-string v4, "Adjust chunk size from %d to %d"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto :goto_ac

    :cond_a7
    move-wide/from16 v4, v19

    const/4 v2, 0x2

    const/4 v6, 0x1

    move-wide v0, v4

    :goto_ac
    iget v4, v3, Lr1/g;->c:I

    if-lez v4, :cond_cb

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x0

    aput-object v4, v5, v18

    const-string v4, "Sleeping for delay %d(s)"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v3, Lr1/g;->c:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_cb
    move-wide/from16 v19, v0

    goto :goto_d3

    :cond_ce
    move-wide v4, v1

    const/4 v2, 0x2

    const/4 v6, 0x1

    move-wide/from16 v19, v4

    :goto_d3
    invoke-virtual/range {p5 .. p5}, Lp1/h;->a()V

    new-instance v0, Lm1/b;

    invoke-direct {v0, v9, v10}, Lm1/b;-><init>(Ljava/io/InputStream;Lp1/h;)V

    iget-object v1, v11, Lo1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    move-wide/from16 v3, v19

    :goto_e4
    const-wide/16 v21, 0x0

    cmp-long v1, v3, v21

    if-lez v1, :cond_10e

    iget-object v1, v11, Lo1/a;->c:Ljava/lang/Object;

    check-cast v1, [B

    array-length v5, v1

    int-to-long v6, v5

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Lm1/b;->read([BII)I

    move-result v1

    if-ltz v1, :cond_10e

    int-to-long v7, v1

    sub-long/2addr v3, v7

    iget-object v5, v11, Lo1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/zip/CRC32;

    iget-object v7, v11, Lo1/a;->c:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v5, v7, v6, v1}, Ljava/util/zip/CRC32;->update([BII)V

    const/4 v6, 0x1

    const-wide/32 v7, 0x10000

    goto :goto_e4

    :cond_10e
    iget-object v0, v11, Lo1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "body_sum"

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->reset()V

    new-instance v3, Lm1/b;

    invoke-direct {v3, v9, v10}, Lm1/b;-><init>(Ljava/io/InputStream;Lp1/h;)V

    if-eqz v12, :cond_140

    const-wide/16 v4, 0x0

    :try_start_136
    invoke-virtual {v12, v4, v5}, Lp1/b$a;->setSendPos(J)V
    :try_end_139
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_140

    :catch_13a
    move-exception v0

    const/4 v8, 0x1

    :goto_13c
    move-object/from16 v2, p0

    goto/16 :goto_1bc

    :cond_140
    :goto_140
    move-object/from16 v1, p0

    move v7, v2

    move-object v2, v0

    const/4 v8, 0x1

    move-wide/from16 v4, v19

    move-object/from16 v6, p7

    move v0, v7

    move-object/from16 v7, p8

    :try_start_14c
    invoke-virtual/range {v1 .. v7}, Lr1/f;->b(Landroid/net/Uri;Lm1/b;JLp1/b$a;Lm1/j$a;)Lr1/h;

    move-result-object v6

    iget-object v1, v6, Lr1/h;->b:Ljava/lang/String;

    const-string v2, "CONTINUE_UPLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_199

    iget-object v1, v6, Lr1/h;->b:Ljava/lang/String;

    const-string v2, "BLOCK_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_165

    goto :goto_199

    :cond_165
    iget-object v0, v6, Lr1/h;->b:Ljava/lang/String;

    if-nez v0, :cond_16b

    const/4 v0, 0x0

    goto :goto_16f

    :cond_16b
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_16f
    sget-object v1, Lr1/h;->h:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_198

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload needChunkRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lr1/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p0

    move-object v1, v6

    goto/16 :goto_13

    :cond_198
    return-object v6

    :cond_199
    :goto_199
    move-object v1, v6

    move-wide/from16 v2, p2

    move-wide/from16 v4, v19

    move-object v15, v6

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v7}, Lr1/f;->c(Lr1/h;JJJ)V
    :try_end_1a4
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_14c .. :try_end_1a4} :catch_1ba

    move-object/from16 v2, p0

    :try_start_1a6
    iget-wide v3, v2, Lr1/f;->d:J

    cmp-long v1, v19, v3

    if-ltz v1, :cond_1b6

    sget-wide v5, Lp1/f;->a:J

    shl-long v0, v3, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lr1/f;->d:J
    :try_end_1b6
    .catch Lcn/kuaipan/android/exception/KscException; {:try_start_1a6 .. :try_end_1b6} :catch_1b8

    :cond_1b6
    move-object v1, v15

    goto :goto_1ea

    :catch_1b8
    move-exception v0

    goto :goto_1bc

    :catch_1ba
    move-exception v0

    goto :goto_13c

    :goto_1bc
    invoke-static {v0}, La/b;->M(Lcn/kuaipan/android/exception/KscException;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_1e8

    iget-wide v0, v2, Lr1/f;->d:J

    shr-long/2addr v0, v8

    const-wide/32 v3, 0x10000

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v2, Lr1/f;->d:J

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e2

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    move-object v8, v2

    goto/16 :goto_12

    :cond_1e2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1e8
    throw v0

    :cond_1e9
    move-object v2, v8

    :goto_1ea
    return-object v1
.end method

.method public final b(Landroid/net/Uri;Lm1/b;JLp1/b$a;Lm1/j$a;)Lr1/h;
    .registers 16

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcn/kuaipan/android/http/KscHttpRequest;

    sget-object v2, Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;->POST:Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;

    invoke-direct {v1, v2, p1, p5}, Lcn/kuaipan/android/http/KscHttpRequest;-><init>(Lcn/kuaipan/android/http/KscHttpRequest$HttpMethod;Landroid/net/Uri;Lp1/b$a;)V

    new-instance p5, Lr1/a;

    invoke-direct {p5, p2, p3, p4}, Lr1/a;-><init>(Lm1/b;J)V

    invoke-virtual {v1, p5}, Lcn/kuaipan/android/http/KscHttpRequest;->f(Lr1/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lr1/f;->c:Lm1/g;

    const/4 p5, 0x4

    invoke-virtual {p4, v1, p5, p6}, Lm1/g;->b(Lcn/kuaipan/android/http/KscHttpRequest;ILm1/j$a;)Lm1/f;

    move-result-object p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long v3, p5, p2

    const-wide/16 p2, 0x0

    invoke-virtual {p4}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object p5

    if-eqz p5, :cond_37

    invoke-virtual {p4}, Lm1/f;->d()Lorg/apache/http/HttpResponse;

    move-result-object p5

    invoke-interface {p5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p5

    if-eqz p5, :cond_37

    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p2

    :cond_37
    move-wide v5, p2

    invoke-virtual {p4}, Lm1/f;->e()I

    move-result p2

    const-string p3, ""

    invoke-virtual {p4}, Lm1/f;->c()Ljava/lang/Throwable;

    move-result-object p5

    if-eqz p5, :cond_50

    invoke-virtual {p4}, Lm1/f;->c()Ljava/lang/Throwable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    :cond_50
    move-object v8, p3

    invoke-static {}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->getInstance()Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/micloudsdk/stat/MiCloudStatManager;->addHttpEvent(Ljava/lang/String;JJILjava/lang/String;)V

    sget-object p1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;

    invoke-static {p4, p1}, La/b;->c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_7f

    invoke-static {p4, p1}, Ls1/a;->c(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)Ljava/util/Map;

    move-result-object v0

    new-instance p1, Lr1/h;

    invoke-direct {p1, v0}, Lr1/h;-><init>(Ljava/util/Map;)V

    invoke-static {p4}, Lr1/g;->b(Lm1/f;)Lr1/g;

    move-result-object p2

    iput-object p2, p1, Lr1/h;->g:Lr1/g;
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_90

    instance-of p2, v0, Ls1/f;

    if-eqz p2, :cond_7e

    check-cast v0, Ls1/f;

    invoke-interface {v0}, Ls1/f;->recycle()V

    :cond_7e
    return-object p1

    :cond_7f
    :try_start_7f
    new-instance p3, Lcn/kuaipan/android/exception/ServerException;

    invoke-virtual {p4}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4, p1}, Lcn/kuaipan/android/exception/ServerException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    const-string p1, "KssUploader"

    const-string p2, "Exception in doUpload"

    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p3
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p1

    if-eqz v0, :cond_9c

    instance-of p2, v0, Ls1/f;

    if-eqz p2, :cond_9c

    check-cast v0, Ls1/f;

    invoke-interface {v0}, Ls1/f;->recycle()V

    :cond_9c
    throw p1
.end method

.method public final d(Lr1/d;Lm1/c;Lm1/j$a;ILr1/e;)V
    .registers 39

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    if-eqz v1, :cond_17

    new-instance v2, Lp1/b;

    invoke-direct {v2, v1}, Lp1/b;-><init>(Lm1/c;)V

    iget-wide v3, v0, Lr1/d;->c:J

    invoke-interface {v1, v3, v4}, Lm1/c;->setSendTotal(J)V

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    move-object v13, v2

    const/4 v1, 0x0

    move-object v3, v0

    move v14, v1

    move-object v4, v10

    move-object v2, v12

    :goto_1e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_3a5

    const-string v5, "upload blockIndex: "

    const-string v15, "KssUploader"

    invoke-static {v5, v14, v15}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, v2, Lr1/e;->b:Lr1/k;

    iget-object v6, v5, Lr1/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v14, v6, :cond_37

    const/4 v5, 0x0

    goto :goto_3f

    :cond_37
    iget-object v5, v5, Lr1/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr1/k$a;

    :goto_3f
    iget-wide v6, v3, Lr1/d;->c:J

    int-to-long v8, v14

    const-wide/32 v11, 0x400000

    mul-long/2addr v8, v11

    sub-long/2addr v6, v8

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    iget v7, v5, Lr1/k$a;->c:I

    const v11, 0x6263a

    if-ne v6, v7, :cond_39b

    :try_start_53
    invoke-virtual/range {p1 .. p1}, Lr1/d;->b()Ljava/io/InputStream;

    move-result-object v7
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_38c
    .catchall {:try_start_53 .. :try_end_57} :catchall_389

    :try_start_57
    invoke-virtual {v7, v8, v9}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v16

    cmp-long v12, v16, v8

    if-nez v12, :cond_37b

    invoke-static {v7, v6}, La/b;->e(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lr1/k$a;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_69} :catch_387
    .catchall {:try_start_57 .. :try_end_69} :catchall_385

    if-eqz v5, :cond_371

    :try_start_6b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6e

    :catchall_6e
    iget-object v5, v2, Lr1/e;->c:Lp1/e;

    invoke-interface {v5, v14}, Lp1/e;->getBlock(I)Lp1/e$a;

    move-result-object v5

    if-eqz v5, :cond_366

    iget-boolean v5, v5, Lp1/e$a;->b:Z

    const/4 v6, 0x1

    if-nez v5, :cond_349

    iget-object v4, v4, Lr1/f;->b:Lr1/l;

    const/4 v5, 0x2

    if-nez v4, :cond_82

    const/4 v1, 0x0

    goto :goto_92

    :cond_82
    iget-object v4, v4, Lr1/l;->d:Lr1/l$a;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/i;

    :goto_92
    if-eqz v1, :cond_9f

    iget-object v4, v1, Lr1/i;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a0

    iget-wide v5, v1, Lr1/i;->a:J

    goto :goto_a2

    :cond_9f
    const/4 v4, 0x0

    :cond_a0
    const-wide/16 v5, 0x0

    :goto_a2
    const-wide/32 v16, 0x10000

    rem-long v16, v5, v16

    sub-long v5, v5, v16

    add-int/lit8 v1, v14, 0x1

    int-to-long v11, v1

    const-wide/32 v18, 0x400000

    mul-long v11, v11, v18

    cmp-long v1, v5, v11

    if-gez v1, :cond_bf

    cmp-long v1, v5, v8

    if-gez v1, :cond_ba

    goto :goto_bf

    :cond_ba
    move-object/from16 p2, v4

    move-wide/from16 v18, v5

    goto :goto_c3

    :cond_bf
    :goto_bf
    move-object/from16 p2, v4

    move-wide/from16 v18, v8

    :goto_c3
    iget-wide v4, v3, Lr1/d;->c:J

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    iget-object v7, v2, Lr1/e;->c:Lp1/e;

    const-string v1, "RC4 key:"

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Lp1/e;->getSecureKey()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    :try_start_e5
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-direct {v6, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_ENCODE_KEY:Lcn/kuaipan/android/kss/TransferStep;
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_335

    :try_start_ed
    new-instance v5, Lp1/h;

    invoke-interface {v7}, Lp1/e;->getSecureKey()[B

    move-result-object v4

    invoke-direct {v5, v4}, Lp1/h;-><init>([B)V

    new-instance v4, Lo1/a;
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_331

    move-object/from16 v22, v1

    const/4 v1, 0x2

    :try_start_fb
    invoke-direct {v4, v1}, Lo1/a;-><init>(I)V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_32d

    const-string v1, ""

    const/16 v23, 0x0

    move-object/from16 v24, p2

    move-object/from16 p2, v1

    move-wide/from16 v31, v18

    move-object/from16 v18, v2

    move-wide/from16 v1, v31

    :goto_10c
    :try_start_10c
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    if-ltz v19, :cond_315

    sget-object v22, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    if-eqz v23, :cond_11b

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    const/16 v23, 0x0

    :cond_11b
    invoke-virtual/range {p1 .. p1}, Lr1/d;->c()Ls1/l;

    move-result-object v3
    :try_end_11f
    .catchall {:try_start_10c .. :try_end_11f} :catchall_326

    :try_start_11f
    invoke-virtual {v3, v1, v2}, Ls1/l;->e(J)V

    if-eqz v13, :cond_12c

    move-object/from16 v19, v4

    iget-object v4, v13, Lp1/b;->a:Lm1/c;

    invoke-interface {v4, v1, v2}, Lm1/c;->setSendPos(J)V

    goto :goto_12e

    :cond_12c
    move-object/from16 v19, v4

    :goto_12e
    new-instance v4, Lr1/h;

    const-wide/32 v25, 0x400000

    rem-long v25, v1, v25

    sub-long v27, v20, v1

    move-object/from16 v23, v4

    invoke-direct/range {v23 .. v28}, Lr1/h;-><init>(Ljava/lang/String;JJ)V

    :goto_13c
    iget-wide v1, v4, Lr1/h;->c:J
    :try_end_13e
    .catchall {:try_start_11f .. :try_end_13e} :catchall_30f

    cmp-long v1, v1, v20

    const-string v2, "Exception in uploadBlock"

    move-object/from16 v24, v15

    const-string v15, "BLOCK_COMPLETED"

    if-gez v1, :cond_27c

    move-object/from16 v18, v2

    :try_start_14a
    iget-wide v1, v4, Lr1/h;->d:J

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-lez v1, :cond_260

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_258

    if-nez v13, :cond_15e

    const/4 v1, 0x0

    :goto_15b
    move-object/from16 v23, v1

    goto :goto_164

    :cond_15e
    new-instance v1, Lp1/b$a;

    invoke-direct {v1, v13}, Lp1/b$a;-><init>(Lp1/b;)V
    :try_end_163
    .catchall {:try_start_14a .. :try_end_163} :catchall_30f

    goto :goto_15b

    :goto_164
    move-object/from16 v2, p2

    move-object/from16 v1, p0

    move-object/from16 p2, v13

    move-object/from16 v29, v18

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v18, v3

    move-object v3, v5

    move-object/from16 v25, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v25

    move-object/from16 v26, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    move-object/from16 v30, v7

    move-object/from16 v7, p5

    move-wide/from16 v27, v8

    move v8, v14

    move-object/from16 v9, v19

    :try_start_188
    invoke-virtual/range {v1 .. v9}, Lr1/f;->e(Ls1/l;Lp1/h;Lo1/a;Lp1/b$a;Lm1/j$a;Lr1/e;ILr1/h;)Lr1/h;

    move-result-object v4

    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;
    :try_end_18e
    .catchall {:try_start_188 .. :try_end_18e} :catchall_30d

    if-eqz v4, :cond_248

    :try_start_190
    iget-object v2, v4, Lr1/h;->b:Ljava/lang/String;

    const-string v3, "CONTINUE_UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d3

    new-instance v2, Lr1/i;

    invoke-direct {v2}, Lr1/i;-><init>()V

    iget-wide v5, v4, Lr1/h;->c:J

    add-long v8, v27, v5

    iput-wide v8, v2, Lr1/i;->a:J

    iget-object v3, v4, Lr1/h;->e:Ljava/lang/String;

    iput-object v3, v2, Lr1/i;->b:Ljava/lang/String;

    iget-object v3, v10, Lr1/f;->b:Lr1/l;

    if-nez v3, :cond_1b2

    move/from16 v5, p4

    move-object/from16 v7, p5

    goto :goto_1bb

    :cond_1b2
    iget-object v3, v3, Lr1/l;->b:Lr1/l$b;

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual {v3, v5, v7, v2}, Lr1/l$b;->e(ILr1/e;Lr1/i;)V

    :goto_1bb
    move-object/from16 v22, v1

    move-object/from16 v3, v18

    move-object/from16 v6, v23

    move-object/from16 v15, v24

    move-object/from16 v19, v25

    move-object/from16 v5, v26

    move-wide/from16 v8, v27

    move-object/from16 v7, v30

    move-object/from16 v31, v13

    move-object/from16 v13, p2

    move-object/from16 p2, v31

    goto/16 :goto_13c

    :cond_1d3
    move/from16 v5, p4

    move-object/from16 v7, p5

    iget-object v2, v4, Lr1/h;->b:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_206

    new-instance v2, Lr1/i;

    invoke-direct {v2}, Lr1/i;-><init>()V

    iget-wide v8, v0, Lr1/d;->c:J

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v2, Lr1/i;->a:J

    iput-object v13, v2, Lr1/i;->b:Ljava/lang/String;

    move-object/from16 v3, v30

    invoke-interface {v3, v14}, Lp1/e;->getBlock(I)Lp1/e$a;

    move-result-object v6

    iget-object v8, v4, Lr1/h;->f:Ljava/lang/String;

    iput-object v8, v6, Lp1/e$a;->a:Ljava/lang/String;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lp1/e$a;->b:Z

    iget-object v6, v10, Lr1/f;->b:Lr1/l;

    if-nez v6, :cond_200

    goto :goto_21a

    :cond_200
    iget-object v6, v6, Lr1/l;->b:Lr1/l$b;

    invoke-virtual {v6, v5, v7, v2}, Lr1/l$b;->e(ILr1/e;Lr1/i;)V

    goto :goto_21a

    :cond_206
    move-object/from16 v3, v30

    iget-object v2, v4, Lr1/h;->b:Ljava/lang/String;

    if-nez v2, :cond_20e

    const/4 v2, 0x0

    goto :goto_212

    :cond_20e
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_212
    sget-object v6, Lr1/h;->i:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_223

    :goto_21a
    move-object/from16 v22, v1

    move-object v1, v4

    move-object/from16 v2, v24

    move-object/from16 v4, v29

    goto/16 :goto_295

    :cond_223
    const/4 v0, 0x1

    iput-boolean v0, v7, Lr1/e;->f:Z

    iget-object v2, v10, Lr1/f;->b:Lr1/l;

    if-nez v2, :cond_22b

    goto :goto_239

    :cond_22b
    iget-object v2, v2, Lr1/l;->d:Lr1/l$a;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v2, v0, v3}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_239
    new-instance v0, Lcn/kuaipan/android/exception/SessionExpiredException;

    iget-object v2, v4, Lr1/h;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcn/kuaipan/android/exception/SessionExpiredException;-><init>(Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    move-object/from16 v2, v24

    move-object/from16 v4, v29

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_248
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const-string v2, "Return chunkInfo is null"

    const v3, 0x7a128

    invoke-direct {v0, v3, v2}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_253
    .catchall {:try_start_190 .. :try_end_253} :catchall_253

    :catchall_253
    move-exception v0

    move-object/from16 v22, v1

    goto/16 :goto_312

    :cond_258
    move-object/from16 v18, v3

    :try_start_25a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_260
    move-object/from16 v26, v5

    move-object/from16 v23, v6

    move-wide/from16 v27, v8

    move-object/from16 v25, v19

    move-object/from16 v2, v24

    move/from16 v5, p4

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v3

    move-object v3, v7

    move-object/from16 v7, p5

    :goto_275
    move-object/from16 v31, v13

    move-object/from16 v13, p2

    move-object/from16 p2, v31

    goto :goto_293

    :cond_27c
    move-object/from16 v18, v3

    move-object/from16 v26, v5

    move-object/from16 v23, v6

    move-object v3, v7

    move-wide/from16 v27, v8

    move-object/from16 v25, v19

    const-wide/16 v16, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v24

    goto :goto_275

    :goto_293
    move-object/from16 v1, v19

    :goto_295
    sget-object v6, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_REQUEST_XMS_HTTP:Lcn/kuaipan/android/kss/TransferStep;
    :try_end_297
    .catchall {:try_start_25a .. :try_end_297} :catchall_30d

    :try_start_297
    iget-object v8, v1, Lr1/h;->b:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a5

    move-object v3, v0

    move-object v2, v7

    move-object/from16 v23, v18

    goto/16 :goto_31d

    :cond_2a5
    iget-object v8, v1, Lr1/h;->b:Ljava/lang/String;

    const-string v9, "ERR_BLOCK_CORRUPTED"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e6

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v8

    if-lez v8, :cond_2e6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upload needBlockRetry: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lr1/h;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    move-object/from16 v22, v6

    move-object/from16 v24, v13

    move-wide/from16 v1, v16

    move-object/from16 v6, v23

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-wide/from16 v8, v27

    move-object/from16 v23, v18

    move-object/from16 v18, v7

    move-object/from16 v13, p2

    move-object v7, v3

    move-object/from16 p2, v24

    move-object v3, v0

    goto/16 :goto_10c

    :cond_2e6
    new-instance v0, Lcn/kuaipan/android/exception/ServerMsgException;

    const/16 v3, 0xc8

    iget-object v1, v1, Lr1/h;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v1, v6}, Lcn/kuaipan/android/exception/ServerMsgException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    iput-boolean v1, v7, Lr1/e;->f:Z

    iget-object v2, v10, Lr1/f;->b:Lr1/l;

    if-nez v2, :cond_2fa

    goto :goto_308

    :cond_2fa
    iget-object v2, v2, Lr1/l;->d:Lr1/l$a;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Ls1/m;->a(I[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_308
    throw v0
    :try_end_309
    .catchall {:try_start_297 .. :try_end_309} :catchall_309

    :catchall_309
    move-exception v0

    move-object/from16 v22, v6

    goto :goto_312

    :catchall_30d
    move-exception v0

    goto :goto_312

    :catchall_30f
    move-exception v0

    move-object/from16 v18, v3

    :goto_312
    move-object/from16 v3, v18

    goto :goto_329

    :cond_315
    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 p2, v13

    move-object/from16 v2, v18

    :goto_31d
    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz v23, :cond_324

    :try_start_321
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_324
    .catchall {:try_start_321 .. :try_end_324} :catchall_324

    :catchall_324
    :cond_324
    move-object v4, v10

    goto :goto_34f

    :catchall_326
    move-exception v0

    move-object/from16 v3, v23

    :goto_329
    const/4 v1, 0x0

    move-object/from16 v2, v22

    goto :goto_33d

    :catchall_32d
    move-exception v0

    move-object/from16 v1, v22

    goto :goto_336

    :catchall_331
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_336

    :catchall_335
    move-exception v0

    :goto_336
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v31, v2

    move-object v2, v1

    move-object/from16 v1, v31

    :goto_33d
    :try_start_33d
    invoke-static {v0, v1, v2}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0
    :try_end_342
    .catchall {:try_start_33d .. :try_end_342} :catchall_342

    :catchall_342
    move-exception v0

    if-eqz v3, :cond_348

    :try_start_345
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_348
    .catchall {:try_start_345 .. :try_end_348} :catchall_348

    :catchall_348
    :cond_348
    throw v0

    :cond_349
    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 p2, v13

    :goto_34f
    add-int/lit8 v14, v14, 0x1

    iget-object v8, v7, Lr1/e;->c:Lp1/e;

    if-eqz v8, :cond_35c

    invoke-interface {v8}, Lp1/e;->isCompleted()Z

    move-result v8

    if-eqz v8, :cond_35c

    goto :goto_35d

    :cond_35c
    move v6, v1

    :goto_35d
    if-eqz v6, :cond_360

    return-void

    :cond_360
    move-object/from16 v13, p2

    move v11, v5

    move-object v12, v7

    goto/16 :goto_1e

    :cond_366
    new-instance v0, Lcn/kuaipan/android/exception/KscRuntimeException;

    const-string v1, "Block should not be null"

    const v2, 0x7a128

    invoke-direct {v0, v2, v1}, Lcn/kuaipan/android/exception/KscRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_371
    :try_start_371
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const-string v1, "Block has changed."

    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v0, v11, v1, v2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v0

    :cond_37b
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    const-string v1, "File size has changed."

    sget-object v2, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    invoke-direct {v0, v11, v1, v2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v0
    :try_end_385
    .catch Ljava/io/IOException; {:try_start_371 .. :try_end_385} :catch_387
    .catchall {:try_start_371 .. :try_end_385} :catchall_385

    :catchall_385
    move-exception v0

    goto :goto_396

    :catch_387
    move-exception v0

    goto :goto_38e

    :catchall_389
    move-exception v0

    const/4 v1, 0x0

    goto :goto_397

    :catch_38c
    move-exception v0

    const/4 v7, 0x0

    :goto_38e
    :try_start_38e
    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0
    :try_end_396
    .catchall {:try_start_38e .. :try_end_396} :catchall_385

    :goto_396
    move-object v1, v7

    :goto_397
    :try_start_397
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39a
    .catchall {:try_start_397 .. :try_end_39a} :catchall_39a

    :catchall_39a
    throw v0

    :cond_39b
    new-instance v0, Lcn/kuaipan/android/exception/KscException;

    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE:Lcn/kuaipan/android/kss/TransferStep;

    const-string v2, "Block size has changed."

    invoke-direct {v0, v11, v2, v1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    throw v0

    :cond_3a5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final e(Ls1/l;Lp1/h;Lo1/a;Lp1/b$a;Lm1/j$a;Lr1/e;ILr1/h;)Lr1/h;
    .registers 26

    move-object/from16 v11, p1

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    iget-object v15, v12, Lr1/e;->c:Lp1/e;

    invoke-interface {v15}, Lp1/e;->getNodeUrls()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_cc

    array-length v0, v10

    if-lez v0, :cond_cc

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v9, v0

    move-object/from16 v16, v1

    :goto_18
    array-length v0, v10

    if-ge v9, v0, :cond_cb

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_c5

    const-wide/32 v0, 0x400000

    int-to-long v2, v13

    mul-long/2addr v2, v0

    :try_start_26
    iget-wide v0, v14, Lr1/h;->c:J

    add-long/2addr v2, v0

    invoke-virtual {v11, v2, v3}, Ls1/l;->e(J)V

    const/high16 v0, 0x400000

    invoke-virtual {v11, v0}, Ljava/io/InputStream;->mark(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v10, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/upload_block_chunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "chunk_pos"

    iget-wide v2, v14, Lr1/h;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, v14, Lr1/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "upload_id"

    iget-object v2, v14, Lr1/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_7b

    :cond_67
    const-string v1, "file_meta"

    invoke-interface {v15}, Lp1/e;->getFileMeta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "block_meta"

    invoke-interface {v15, v13}, Lp1/e;->getBlock(I)Lp1/e$a;

    move-result-object v2

    iget-object v2, v2, Lp1/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_7b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, v14, Lr1/h;->c:J
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_81} :catch_a2

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v11, v9

    move-object/from16 v9, p5

    move-object v13, v10

    move-object/from16 v10, p6

    :try_start_91
    invoke-virtual/range {v1 .. v10}, Lr1/f;->a(Landroid/net/Uri;JLs1/l;Lp1/h;Lo1/a;Lp1/b$a;Lm1/j$a;Lr1/e;)Lr1/h;

    move-result-object v1
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_95} :catch_a0

    :try_start_95
    iget-object v0, v1, Lr1/h;->g:Lr1/g;

    iput-object v0, v12, Lr1/e;->h:Lr1/g;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_9c

    move-object/from16 v16, v1

    goto :goto_cb

    :catch_9c
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_a5

    :catch_a0
    move-exception v0

    goto :goto_a5

    :catch_a2
    move-exception v0

    move v11, v9

    move-object v13, v10

    :goto_a5
    invoke-static {v0}, La/b;->F(Ljava/lang/Throwable;)V

    invoke-static {v0}, La/b;->N(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_bc

    array-length v1, v13

    add-int/lit8 v1, v1, -0x1

    if-ge v11, v1, :cond_bc

    add-int/lit8 v9, v11, 0x1

    move-object/from16 v11, p1

    move-object v10, v13

    move/from16 v13, p7

    goto/16 :goto_18

    :cond_bc
    sget-object v1, Lcn/kuaipan/android/kss/TransferStep;->UPLOAD_PREPARE_STREAM:Lcn/kuaipan/android/kss/TransferStep;

    const-string v2, "Failed when upload a kss chunk."

    invoke-static {v0, v2, v1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object v0

    throw v0

    :cond_c5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_cb
    :goto_cb
    return-object v16

    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No available urls."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
