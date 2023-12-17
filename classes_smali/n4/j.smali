.class public final Ln4/j;
.super Ln4/d;
.source "RemoveFilesFromZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln4/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/d<",
        "Ln4/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lm4/n;

.field public final e:Lj4/a;


# direct methods
.method public constructor <init>(Lm4/n;Lj4/a;Ln4/h$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p3}, Ln4/d;-><init>(Ln4/h$a;)V

    .line 4
    iput-object p1, p0, Ln4/j;->d:Lm4/n;

    .line 6
    iput-object p2, p0, Ln4/j;->e:Lj4/a;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lm4/m;)J
    .registers 4

    .line 1
    check-cast p1, Ln4/j$a;

    .line 3
    iget-object p1, p0, Ln4/j;->d:Lm4/n;

    .line 5
    iget-object p1, p1, Lm4/n;->h:Ljava/io/File;

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final c(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    check-cast v0, Ln4/j$a;

    .line 7
    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    .line 9
    iget-boolean v2, v2, Lm4/n;->f:Z

    .line 11
    if-nez v2, :cond_191

    .line 13
    iget-object v2, v0, Ln4/j$a;->b:Ljava/util/List;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_2f

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 36
    iget-object v5, v1, Ln4/j;->d:Lm4/n;

    .line 38
    invoke-static {v5, v4}, La/b;->C(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 41
    move-result-object v5

    .line 42
    if-eqz v5, :cond_17

    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_17

    .line 48
    :cond_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_37

    .line 54
    goto/16 :goto_166

    .line 56
    :cond_37
    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    .line 58
    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    new-instance v4, Ljava/security/SecureRandom;

    .line 66
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 69
    new-instance v5, Ljava/io/File;

    .line 71
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v6

    .line 75
    const/16 v7, 0x2710

    .line 77
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    .line 80
    move-result v8

    .line 81
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 88
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    :goto_5a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_75

    .line 97
    new-instance v5, Ljava/io/File;

    .line 99
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    .line 106
    move-result v8

    .line 107
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    goto :goto_5a

    .line 118
    :cond_75
    const/4 v2, 0x0

    .line 119
    const/4 v4, 0x1

    .line 120
    :try_start_77
    new-instance v14, Ll4/h;

    .line 122
    invoke-direct {v14, v5}, Ll4/h;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_187

    .line 125
    :try_start_7c
    new-instance v15, Ljava/io/RandomAccessFile;

    .line 127
    iget-object v6, v1, Ln4/j;->d:Lm4/n;

    .line 129
    iget-object v6, v6, Lm4/n;->h:Ljava/io/File;

    .line 131
    sget-object v7, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    .line 133
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    .line 136
    move-result-object v7

    .line 137
    invoke-direct {v15, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_177

    .line 140
    const-wide/16 v6, 0x0

    .line 142
    :try_start_8d
    iget-object v8, v1, Ln4/j;->d:Lm4/n;

    .line 144
    iget-object v8, v8, Lm4/n;->b:Lo1/a;

    .line 146
    iget-object v8, v8, Lo1/a;->b:Ljava/lang/Object;

    .line 148
    check-cast v8, Ljava/util/List;

    .line 150
    new-instance v13, Ljava/util/ArrayList;

    .line 152
    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    new-instance v8, Ln4/c;

    .line 157
    invoke-direct {v8}, Ln4/c;-><init>()V

    .line 160
    invoke-static {v13, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 166
    move-result-object v16

    .line 167
    move-wide/from16 v17, v6

    .line 169
    :goto_a8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_14c

    .line 175
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    move-result-object v6

    .line 179
    check-cast v6, Lm4/g;

    .line 181
    iget-object v7, v1, Ln4/j;->d:Lm4/n;

    .line 183
    invoke-static {v13, v6}, Ln4/d;->i(Ljava/util/ArrayList;Lm4/g;)I

    .line 186
    move-result v8

    .line 187
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 190
    move-result v9

    .line 191
    add-int/lit8 v9, v9, -0x1

    .line 193
    if-ne v8, v9, :cond_d0

    .line 195
    iget-boolean v8, v7, Lm4/n;->i:Z

    .line 197
    if-eqz v8, :cond_cb

    .line 199
    iget-object v7, v7, Lm4/n;->e:Lm4/k;

    .line 201
    iget-wide v7, v7, Lm4/k;->j:J

    .line 203
    goto :goto_da

    .line 204
    :cond_cb
    iget-object v7, v7, Lm4/n;->c:Lm4/d;

    .line 206
    iget-wide v7, v7, Lm4/d;->f:J

    .line 208
    goto :goto_da

    .line 209
    :cond_d0
    add-int/lit8 v8, v8, 0x1

    .line 211
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Lm4/g;

    .line 217
    iget-wide v7, v7, Lm4/g;->w:J

    .line 219
    :goto_da
    invoke-virtual {v14}, Ll4/h;->getFilePointer()J

    .line 222
    move-result-wide v9

    .line 223
    sub-long v10, v7, v9

    .line 225
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 228
    move-result-object v7

    .line 229
    :cond_e4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    move-result v8

    .line 233
    if-eqz v8, :cond_10b

    .line 235
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v8

    .line 239
    check-cast v8, Ljava/lang/String;

    .line 241
    const-string v9, "/"

    .line 243
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_101

    .line 249
    iget-object v9, v6, Lm4/b;->k:Ljava/lang/String;

    .line 251
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_101

    .line 257
    goto :goto_109

    .line 258
    :cond_101
    iget-object v9, v6, Lm4/b;->k:Ljava/lang/String;

    .line 260
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_e4

    .line 266
    :goto_109
    move v7, v4

    .line 267
    goto :goto_10c

    .line 268
    :cond_10b
    move v7, v2

    .line 269
    :goto_10c
    if-eqz v7, :cond_12c

    .line 271
    invoke-virtual {v1, v13, v6, v10, v11}, Ln4/j;->j(Ljava/util/ArrayList;Lm4/g;J)V

    .line 274
    iget-object v7, v1, Ln4/j;->d:Lm4/n;

    .line 276
    iget-object v7, v7, Lm4/n;->b:Lo1/a;

    .line 278
    iget-object v7, v7, Lo1/a;->b:Ljava/lang/Object;

    .line 280
    check-cast v7, Ljava/util/List;

    .line 282
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    move-result v6

    .line 286
    if-eqz v6, :cond_124

    .line 288
    add-long v17, v17, v10

    .line 290
    move-object/from16 v22, v13

    .line 292
    goto :goto_145

    .line 293
    :cond_124
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 295
    const-string v3, "Could not remove entry from list of central directory headers"

    .line 297
    invoke-direct {v0, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 300
    throw v0

    .line 301
    :cond_12c
    iget-object v6, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 303
    check-cast v6, Lm4/i;

    .line 305
    iget v12, v6, Lm4/i;->b:I

    .line 307
    move-object v6, v15

    .line 308
    move-object v7, v14

    .line 309
    move-wide/from16 v8, v17

    .line 311
    move-wide/from16 v19, v10

    .line 313
    move/from16 v21, v12

    .line 315
    move-object/from16 v12, p2

    .line 317
    move-object/from16 v22, v13

    .line 319
    move/from16 v13, v21

    .line 321
    invoke-static/range {v6 .. v13}, Ln4/d;->h(Ljava/io/RandomAccessFile;Ll4/h;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V

    .line 324
    add-long v17, v17, v19

    .line 326
    :goto_145
    invoke-virtual/range {p0 .. p0}, Ln4/h;->f()V

    .line 329
    move-object/from16 v13, v22

    .line 331
    goto/16 :goto_a8

    .line 333
    :cond_14c
    iget-object v3, v1, Ln4/j;->e:Lj4/a;

    .line 335
    iget-object v6, v1, Ln4/j;->d:Lm4/n;

    .line 337
    iget-object v0, v0, Lm4/m;->a:Ljava/lang/Object;

    .line 339
    check-cast v0, Lm4/i;

    .line 341
    iget-object v0, v0, Lm4/i;->a:Ljava/nio/charset/Charset;

    .line 343
    invoke-virtual {v3, v6, v14, v0}, Lj4/a;->c(Lm4/n;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_159
    .catchall {:try_start_8d .. :try_end_159} :catchall_16b

    .line 346
    :try_start_159
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_169

    .line 349
    :try_start_15c
    invoke-virtual {v14}, Ll4/h;->close()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_167

    .line 352
    iget-object v0, v1, Ln4/j;->d:Lm4/n;

    .line 354
    iget-object v0, v0, Lm4/n;->h:Ljava/io/File;

    .line 356
    invoke-static {v0, v5, v4}, Ln4/d;->g(Ljava/io/File;Ljava/io/File;Z)V

    .line 359
    :goto_166
    return-void

    .line 360
    :catchall_167
    move-exception v0

    .line 361
    goto :goto_189

    .line 362
    :catchall_169
    move-exception v0

    .line 363
    goto :goto_179

    .line 364
    :catchall_16b
    move-exception v0

    .line 365
    move-object v3, v0

    .line 366
    :try_start_16d
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_170
    .catchall {:try_start_16d .. :try_end_170} :catchall_171

    .line 369
    goto :goto_176

    .line 370
    :catchall_171
    move-exception v0

    .line 371
    move-object v4, v0

    .line 372
    :try_start_173
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 375
    :goto_176
    throw v3
    :try_end_177
    .catchall {:try_start_173 .. :try_end_177} :catchall_177

    .line 376
    :catchall_177
    move-exception v0

    .line 377
    move v4, v2

    .line 378
    :goto_179
    move-object v2, v0

    .line 379
    :try_start_17a
    invoke-virtual {v14}, Ll4/h;->close()V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_17e

    .line 382
    goto :goto_183

    .line 383
    :catchall_17e
    move-exception v0

    .line 384
    move-object v3, v0

    .line 385
    :try_start_180
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 388
    :goto_183
    throw v2
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_184

    .line 389
    :catchall_184
    move-exception v0

    .line 390
    move v2, v4

    .line 391
    goto :goto_188

    .line 392
    :catchall_187
    move-exception v0

    .line 393
    :goto_188
    move v4, v2

    .line 394
    :goto_189
    iget-object v2, v1, Ln4/j;->d:Lm4/n;

    .line 396
    iget-object v2, v2, Lm4/n;->h:Ljava/io/File;

    .line 398
    invoke-static {v2, v5, v4}, Ln4/d;->g(Ljava/io/File;Ljava/io/File;Z)V

    .line 401
    throw v0

    .line 402
    :cond_191
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    .line 404
    const-string v2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    .line 406
    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 409
    throw v0
.end method

.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->REMOVE_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 3
    return-object v0
.end method

.method public final j(Ljava/util/ArrayList;Lm4/g;J)V
    .registers 14

    .line 1
    iget-object v0, p0, Ln4/j;->d:Lm4/n;

    .line 3
    const-wide/high16 v1, -0x8000000000000000L

    .line 5
    cmp-long v1, p3, v1

    .line 7
    if-eqz v1, :cond_6e

    .line 9
    neg-long v1, p3

    .line 10
    invoke-static {p1, p2}, Ln4/d;->i(Ljava/util/ArrayList;Lm4/g;)I

    .line 13
    move-result p2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq p2, v3, :cond_66

    .line 17
    :cond_10
    :goto_10
    add-int/lit8 p2, p2, 0x1

    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge p2, v4, :cond_37

    .line 25
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lm4/g;

    .line 31
    iget-wide v5, v4, Lm4/g;->w:J

    .line 33
    add-long/2addr v5, v1

    .line 34
    iput-wide v5, v4, Lm4/g;->w:J

    .line 36
    iget-boolean v5, v0, Lm4/n;->i:Z

    .line 38
    if-eqz v5, :cond_10

    .line 40
    iget-object v4, v4, Lm4/b;->o:Lm4/l;

    .line 42
    if-eqz v4, :cond_10

    .line 44
    iget-wide v5, v4, Lm4/l;->d:J

    .line 46
    const-wide/16 v7, -0x1

    .line 48
    cmp-long v7, v5, v7

    .line 50
    if-eqz v7, :cond_10

    .line 52
    add-long/2addr v5, v1

    .line 53
    iput-wide v5, v4, Lm4/l;->d:J

    .line 55
    goto :goto_10

    .line 56
    :cond_37
    iget-object p1, p0, Ln4/j;->d:Lm4/n;

    .line 58
    iget-object p2, p1, Lm4/n;->c:Lm4/d;

    .line 60
    iget-wide v0, p2, Lm4/d;->f:J

    .line 62
    sub-long/2addr v0, p3

    .line 63
    iput-wide v0, p2, Lm4/d;->f:J

    .line 65
    iget v0, p2, Lm4/d;->e:I

    .line 67
    add-int/2addr v0, v3

    .line 68
    iput v0, p2, Lm4/d;->e:I

    .line 70
    iget v0, p2, Lm4/d;->d:I

    .line 72
    if-lez v0, :cond_4c

    .line 74
    add-int/2addr v0, v3

    .line 75
    iput v0, p2, Lm4/d;->d:I

    .line 77
    :cond_4c
    iget-boolean p2, p1, Lm4/n;->i:Z

    .line 79
    if-eqz p2, :cond_65

    .line 81
    iget-object p2, p1, Lm4/n;->e:Lm4/k;

    .line 83
    iget-wide v0, p2, Lm4/k;->j:J

    .line 85
    sub-long/2addr v0, p3

    .line 86
    iput-wide v0, p2, Lm4/k;->j:J

    .line 88
    iget-wide v0, p2, Lm4/k;->h:J

    .line 90
    const-wide/16 v2, 0x1

    .line 92
    sub-long/2addr v0, v2

    .line 93
    iput-wide v0, p2, Lm4/k;->g:J

    .line 95
    iget-object p1, p1, Lm4/n;->d:Lm4/j;

    .line 97
    iget-wide v0, p1, Lm4/j;->c:J

    .line 99
    sub-long/2addr v0, p3

    .line 100
    iput-wide v0, p1, Lm4/j;->c:J

    .line 102
    :cond_65
    return-void

    .line 103
    :cond_66
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 105
    const-string p2, "Could not locate modified file header in zipModel"

    .line 107
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1

    .line 111
    :cond_6e
    new-instance p1, Ljava/lang/ArithmeticException;

    .line 113
    const-string p2, "long overflow"

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
.end method
