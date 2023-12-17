.class public final Lv1/a;
.super Ljava/lang/Object;
.source "HttpClientDownload.java"


# instance fields
.field public a:Lorg/apache/http/client/HttpClient;

.field public b:[B

.field public c:Lv1/b;

.field public d:Lt1/c;

.field public e:Lv1/e;

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lv1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/a;->d:Lt1/c;

    const/4 v0, 0x0

    iput v0, p0, Lv1/a;->f:I

    iput v0, p0, Lv1/a;->g:I

    iput-object p1, p0, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lv1/a;->c:Lv1/b;

    new-instance p1, Lv1/e;

    invoke-direct {p1}, Lv1/e;-><init>()V

    iput-object p1, p0, Lv1/a;->e:Lv1/e;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lv1/a;->b:[B

    return-void
.end method


# virtual methods
.method public final a(Lv1/c;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lv1/a;->e:Lv1/e;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lv1/e;->a:Z

    iget v4, v2, Lv1/c;->a:I

    iput v4, v0, Lv1/e;->b:I

    iput v4, v0, Lv1/e;->d:I

    const/high16 v0, 0x400000

    div-int v5, v4, v0

    rem-int/2addr v4, v0

    iput v4, v1, Lv1/a;->f:I

    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    :goto_18
    iget-object v4, v1, Lv1/a;->d:Lt1/c;

    check-cast v4, Lu1/a;

    iget-object v4, v4, Lu1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_148

    iget-object v4, v1, Lv1/a;->d:Lt1/c;

    check-cast v4, Lu1/a;

    const/4 v6, 0x0

    if-ltz v5, :cond_3d

    iget-object v7, v4, Lu1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_34

    goto :goto_40

    :cond_34
    iget-object v4, v4, Lu1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt1/b;

    goto :goto_41

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_40
    move-object v4, v6

    :goto_41
    const/4 v7, 0x1

    move v8, v7

    :goto_43
    if-eqz v8, :cond_13e

    new-instance v8, Ls1/j;

    invoke-direct {v8, v7}, Ls1/j;-><init>(I)V

    iget-object v0, v1, Lv1/a;->d:Lt1/c;

    check-cast v0, Lu1/a;

    invoke-virtual {v0}, Lu1/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b;->H(Ljava/lang/String;)[B

    move-result-object v15

    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    move v14, v3

    :goto_59
    iget v9, v1, Lv1/a;->g:I

    if-ge v14, v9, :cond_12b

    :try_start_5d
    iget-object v0, v1, Lv1/a;->c:Lv1/b;

    if-nez v0, :cond_6b

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v4}, Lt1/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_73

    :cond_6b
    invoke-interface {v4}, Lt1/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lv1/b;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_73} :catch_119
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_73} :catch_110
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_73} :catch_10b
    .catchall {:try_start_5d .. :try_end_73} :catchall_109

    :goto_73
    move-object v13, v0

    :try_start_74
    const-string v0, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lv1/a;->f:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v0, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ls1/j;->b([B)V

    iget-object v0, v1, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    :goto_a8
    iget-object v9, v1, Lv1/a;->b:[B

    const/16 v10, 0x2000

    invoke-virtual {v0, v9, v3, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-ltz v12, :cond_f6

    iget-object v11, v1, Lv1/a;->b:[B
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_b4} :catch_102
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_b4} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b4} :catch_10b
    .catchall {:try_start_74 .. :try_end_b4} :catchall_109

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v8

    move-object v10, v11

    move-object/from16 v19, v11

    move/from16 v11, v17

    move/from16 v17, v12

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move/from16 v19, v14

    move/from16 v14, v18

    :try_start_c8
    invoke-virtual/range {v9 .. v14}, Ls1/j;->a([BII[BI)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_cb} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_10d
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_109

    :try_start_cb
    iget-object v9, v1, Lv1/a;->b:[B

    move/from16 v10, v17

    invoke-virtual {v2, v10, v9}, Lv1/c;->a(I[B)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d2} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_d2} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d2} :catch_10d
    .catchall {:try_start_cb .. :try_end_d2} :catchall_109

    :try_start_d2
    iget v9, v1, Lv1/a;->f:I

    add-int/2addr v9, v10

    iput v9, v1, Lv1/a;->f:I

    iget-object v9, v1, Lv1/a;->e:Lv1/e;

    invoke-virtual {v9, v10}, Lv1/e;->a(I)V

    iget-object v9, v1, Lv1/a;->e:Lv1/e;

    invoke-virtual {v9}, Lv1/e;->b()Z

    move-result v9

    if-eqz v9, :cond_ea

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Cancel:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_f8

    :cond_ea
    move/from16 v14, v19

    move-object/from16 v13, v20

    goto :goto_a8

    :catch_ef
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_f5} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_f5} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f5} :catch_10d
    .catchall {:try_start_d2 .. :try_end_f5} :catchall_109

    goto :goto_f8

    :cond_f6
    move/from16 v19, v14

    :goto_f8
    move-object/from16 v0, v16

    goto :goto_121

    :catch_fb
    move-object/from16 v20, v13

    move/from16 v19, v14

    :catch_ff
    move-object/from16 v13, v20

    goto :goto_113

    :catch_102
    move-object/from16 v20, v13

    move/from16 v19, v14

    :catch_106
    move-object/from16 v13, v20

    goto :goto_11c

    :catchall_109
    move-exception v0

    goto :goto_12a

    :catch_10b
    move/from16 v19, v14

    :catch_10d
    :try_start_10d
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_121

    :catch_110
    move/from16 v19, v14

    move-object v13, v6

    :goto_113
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    goto :goto_121

    :catch_119
    move/from16 v19, v14

    move-object v13, v6

    :goto_11c
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_121
    .catchall {:try_start_10d .. :try_end_121} :catchall_109

    :goto_121
    sget-object v9, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-eq v0, v9, :cond_126

    goto :goto_12b

    :cond_126
    add-int/lit8 v14, v19, 0x1

    goto/16 :goto_59

    :goto_12a
    throw v0

    :cond_12b
    :goto_12b
    sget-object v8, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v0, v8, :cond_13b

    iget-object v8, v1, Lv1/a;->c:Lv1/b;

    if-eqz v8, :cond_13b

    invoke-virtual {v8}, Lv1/b;->c()Z

    move-result v8

    if-eqz v8, :cond_13b

    goto/16 :goto_41

    :cond_13b
    move v8, v3

    goto/16 :goto_43

    :cond_13e
    sget-object v4, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    if-ne v0, v4, :cond_148

    iput v3, v1, Lv1/a;->f:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    :cond_148
    return-object v0
.end method

.method public final b(Lu1/a;Lcn/kuaipan/kss/KssDef$NetState;)V
    .registers 5

    iput-object p1, p0, Lv1/a;->d:Lt1/c;

    iget-object v0, p0, Lv1/a;->e:Lv1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv1/e;->a:Z

    iput v1, v0, Lv1/e;->b:I

    iget p1, p1, Lu1/a;->b:I

    iput p1, v0, Lv1/e;->c:I

    iput v1, v0, Lv1/e;->d:I

    div-int/lit8 p1, p1, 0x32

    iput p1, v0, Lv1/e;->e:I

    const/4 p1, 0x3

    iput p1, p0, Lv1/a;->g:I

    sget-object p1, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    if-eq p2, p1, :cond_20

    const/4 p1, 0x6

    iput p1, p0, Lv1/a;->g:I

    :cond_20
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lv1/a;->b:[B

    iput-object v0, p0, Lv1/a;->c:Lv1/b;

    iput-object v0, p0, Lv1/a;->d:Lt1/c;

    iput-object v0, p0, Lv1/a;->e:Lv1/e;

    return-void
.end method
