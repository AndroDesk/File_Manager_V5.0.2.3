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
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lv1/b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv1/a;->d:Lt1/c;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lv1/a;->f:I

    .line 10
    iput v0, p0, Lv1/a;->g:I

    .line 12
    iput-object p1, p0, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    .line 14
    iput-object p2, p0, Lv1/a;->c:Lv1/b;

    .line 16
    new-instance p1, Lv1/e;

    .line 18
    invoke-direct {p1}, Lv1/e;-><init>()V

    .line 21
    iput-object p1, p0, Lv1/a;->e:Lv1/e;

    .line 23
    const/16 p1, 0x2000

    .line 25
    new-array p1, p1, [B

    .line 27
    iput-object p1, p0, Lv1/a;->b:[B

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lv1/c;)Lcn/kuaipan/kss/KssDef$KssAPIResult;
    .registers 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    iget-object v0, v1, Lv1/a;->e:Lv1/e;

    .line 7
    const/4 v3, 0x0

    .line 8
    iput-boolean v3, v0, Lv1/e;->a:Z

    .line 10
    iget v4, v2, Lv1/c;->a:I

    .line 12
    iput v4, v0, Lv1/e;->b:I

    .line 14
    iput v4, v0, Lv1/e;->d:I

    .line 16
    const/high16 v0, 0x400000

    .line 18
    div-int v5, v4, v0

    .line 20
    rem-int/2addr v4, v0

    .line 21
    iput v4, v1, Lv1/a;->f:I

    .line 23
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 25
    :goto_18
    iget-object v4, v1, Lv1/a;->d:Lt1/c;

    .line 27
    check-cast v4, Lu1/a;

    .line 29
    iget-object v4, v4, Lu1/a;->c:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v4

    .line 35
    if-ge v5, v4, :cond_148

    .line 37
    iget-object v4, v1, Lv1/a;->d:Lt1/c;

    .line 39
    check-cast v4, Lu1/a;

    .line 41
    const/4 v6, 0x0

    .line 42
    if-ltz v5, :cond_3d

    .line 44
    iget-object v7, v4, Lu1/a;->c:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 49
    move-result v7

    .line 50
    if-lt v5, v7, :cond_34

    .line 52
    goto :goto_40

    .line 53
    :cond_34
    iget-object v4, v4, Lu1/a;->c:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lt1/b;

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :goto_40
    move-object v4, v6

    .line 66
    :goto_41
    const/4 v7, 0x1

    .line 67
    move v8, v7

    .line 68
    :goto_43
    if-eqz v8, :cond_13e

    .line 70
    new-instance v8, Ls1/j;

    .line 72
    invoke-direct {v8, v7}, Ls1/j;-><init>(I)V

    .line 75
    iget-object v0, v1, Lv1/a;->d:Lt1/c;

    .line 77
    check-cast v0, Lu1/a;

    .line 79
    invoke-virtual {v0}, Lu1/a;->a()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, La/b;->H(Ljava/lang/String;)[B

    .line 86
    move-result-object v15

    .line 87
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 89
    move v14, v3

    .line 90
    :goto_59
    iget v9, v1, Lv1/a;->g:I

    .line 92
    if-ge v14, v9, :cond_12b

    .line 94
    :try_start_5d
    iget-object v0, v1, Lv1/a;->c:Lv1/b;

    .line 96
    if-nez v0, :cond_6b

    .line 98
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 100
    invoke-interface {v4}, Lt1/b;->a()Ljava/lang/String;

    .line 103
    move-result-object v9

    .line 104
    invoke-direct {v0, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 107
    goto :goto_73

    .line 108
    :cond_6b
    invoke-interface {v4}, Lt1/b;->a()Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v0, v9}, Lv1/b;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    .line 115
    move-result-object v0
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_73} :catch_119
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_73} :catch_110
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_73} :catch_10b
    .catchall {:try_start_5d .. :try_end_73} :catchall_109

    .line 116
    :goto_73
    move-object v13, v0

    .line 117
    :try_start_74
    const-string v0, "Range"

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v10, "bytes="

    .line 126
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v10, v1, Lv1/a;->f:I

    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v10, "-"

    .line 140
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v13, v0, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v8, v15}, Ls1/j;->b([B)V

    .line 153
    iget-object v0, v1, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    .line 155
    invoke-interface {v0, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    .line 166
    move-result-object v0

    .line 167
    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 169
    :goto_a8
    iget-object v9, v1, Lv1/a;->b:[B

    .line 171
    const/16 v10, 0x2000

    .line 173
    invoke-virtual {v0, v9, v3, v10}, Ljava/io/InputStream;->read([BII)I

    .line 176
    move-result v12

    .line 177
    if-ltz v12, :cond_f6

    .line 179
    iget-object v11, v1, Lv1/a;->b:[B
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_b4} :catch_102
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_b4} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b4} :catch_10b
    .catchall {:try_start_74 .. :try_end_b4} :catchall_109

    .line 181
    const/16 v17, 0x0

    .line 183
    const/16 v18, 0x0

    .line 185
    move-object v9, v8

    .line 186
    move-object v10, v11

    .line 187
    move-object/from16 v19, v11

    .line 189
    move/from16 v11, v17

    .line 191
    move/from16 v17, v12

    .line 193
    move-object/from16 v20, v13

    .line 195
    move-object/from16 v13, v19

    .line 197
    move/from16 v19, v14

    .line 199
    move/from16 v14, v18

    .line 201
    :try_start_c8
    invoke-virtual/range {v9 .. v14}, Ls1/j;->a([BII[BI)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_cb} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_10d
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_109

    .line 204
    :try_start_cb
    iget-object v9, v1, Lv1/a;->b:[B

    .line 206
    move/from16 v10, v17

    .line 208
    invoke-virtual {v2, v10, v9}, Lv1/c;->a(I[B)I
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d2} :catch_ef
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_d2} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d2} :catch_10d
    .catchall {:try_start_cb .. :try_end_d2} :catchall_109

    .line 211
    :try_start_d2
    iget v9, v1, Lv1/a;->f:I

    .line 213
    add-int/2addr v9, v10

    .line 214
    iput v9, v1, Lv1/a;->f:I

    .line 216
    iget-object v9, v1, Lv1/a;->e:Lv1/e;

    .line 218
    invoke-virtual {v9, v10}, Lv1/e;->a(I)V

    .line 221
    iget-object v9, v1, Lv1/a;->e:Lv1/e;

    .line 223
    invoke-virtual {v9}, Lv1/e;->b()Z

    .line 226
    move-result v9

    .line 227
    if-eqz v9, :cond_ea

    .line 229
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 232
    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Cancel:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 234
    goto :goto_f8

    .line 235
    :cond_ea
    move/from16 v14, v19

    .line 237
    move-object/from16 v13, v20

    .line 239
    goto :goto_a8

    .line 240
    :catch_ef
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    sget-object v16, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_f5} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_f5} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f5} :catch_10d
    .catchall {:try_start_d2 .. :try_end_f5} :catchall_109

    .line 246
    goto :goto_f8

    .line 247
    :cond_f6
    move/from16 v19, v14

    .line 249
    :goto_f8
    move-object/from16 v0, v16

    .line 251
    goto :goto_121

    .line 252
    :catch_fb
    move-object/from16 v20, v13

    .line 254
    move/from16 v19, v14

    .line 256
    :catch_ff
    move-object/from16 v13, v20

    .line 258
    goto :goto_113

    .line 259
    :catch_102
    move-object/from16 v20, v13

    .line 261
    move/from16 v19, v14

    .line 263
    :catch_106
    move-object/from16 v13, v20

    .line 265
    goto :goto_11c

    .line 266
    :catchall_109
    move-exception v0

    .line 267
    goto :goto_12a

    .line 268
    :catch_10b
    move/from16 v19, v14

    .line 270
    :catch_10d
    :try_start_10d
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 272
    goto :goto_121

    .line 273
    :catch_110
    move/from16 v19, v14

    .line 275
    move-object v13, v6

    .line 276
    :goto_113
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 279
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->Error:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 281
    goto :goto_121

    .line 282
    :catch_119
    move/from16 v19, v14

    .line 284
    move-object v13, v6

    .line 285
    :goto_11c
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 288
    sget-object v0, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;
    :try_end_121
    .catchall {:try_start_10d .. :try_end_121} :catchall_109

    .line 290
    :goto_121
    sget-object v9, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 292
    if-eq v0, v9, :cond_126

    .line 294
    goto :goto_12b

    .line 295
    :cond_126
    add-int/lit8 v14, v19, 0x1

    .line 297
    goto/16 :goto_59

    .line 299
    :goto_12a
    throw v0

    .line 300
    :cond_12b
    :goto_12b
    sget-object v8, Lcn/kuaipan/kss/KssDef$KssAPIResult;->NetTimeout:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 302
    if-ne v0, v8, :cond_13b

    .line 304
    iget-object v8, v1, Lv1/a;->c:Lv1/b;

    .line 306
    if-eqz v8, :cond_13b

    .line 308
    invoke-virtual {v8}, Lv1/b;->c()Z

    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_13b

    .line 314
    goto/16 :goto_41

    .line 316
    :cond_13b
    move v8, v3

    .line 317
    goto/16 :goto_43

    .line 319
    :cond_13e
    sget-object v4, Lcn/kuaipan/kss/KssDef$KssAPIResult;->OK:Lcn/kuaipan/kss/KssDef$KssAPIResult;

    .line 321
    if-ne v0, v4, :cond_148

    .line 323
    iput v3, v1, Lv1/a;->f:I

    .line 325
    add-int/lit8 v5, v5, 0x1

    .line 327
    goto/16 :goto_18

    .line 329
    :cond_148
    return-object v0
.end method

.method public final b(Lu1/a;Lcn/kuaipan/kss/KssDef$NetState;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lv1/a;->d:Lt1/c;

    .line 3
    iget-object v0, p0, Lv1/a;->e:Lv1/e;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lv1/e;->a:Z

    .line 11
    iput v1, v0, Lv1/e;->b:I

    .line 13
    iget p1, p1, Lu1/a;->b:I

    .line 15
    iput p1, v0, Lv1/e;->c:I

    .line 17
    iput v1, v0, Lv1/e;->d:I

    .line 19
    div-int/lit8 p1, p1, 0x32

    .line 21
    iput p1, v0, Lv1/e;->e:I

    .line 23
    const/4 p1, 0x3

    .line 24
    iput p1, p0, Lv1/a;->g:I

    .line 26
    sget-object p1, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    .line 28
    if-eq p2, p1, :cond_20

    .line 30
    const/4 p1, 0x6

    .line 31
    iput p1, p0, Lv1/a;->g:I

    .line 33
    :cond_20
    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lv1/a;->a:Lorg/apache/http/client/HttpClient;

    .line 4
    iput-object v0, p0, Lv1/a;->b:[B

    .line 6
    iput-object v0, p0, Lv1/a;->c:Lv1/b;

    .line 8
    iput-object v0, p0, Lv1/a;->d:Lt1/c;

    .line 10
    iput-object v0, p0, Lv1/a;->e:Lv1/e;

    .line 12
    return-void
.end method
