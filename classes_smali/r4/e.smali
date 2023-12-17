.class public final Lr4/e;
.super Ljava/lang/Object;
.source "ReLinkerInstance.java"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:Lr4/c;

.field public final c:Lr4/b;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    new-instance v0, Lr4/f;

    .line 3
    invoke-direct {v0}, Lr4/f;-><init>()V

    .line 6
    new-instance v1, Lr4/a;

    .line 8
    invoke-direct {v1}, Lr4/a;-><init>()V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/HashSet;

    .line 16
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 19
    iput-object v2, p0, Lr4/e;->a:Ljava/util/HashSet;

    .line 21
    iput-object v0, p0, Lr4/e;->b:Lr4/c;

    .line 23
    iput-object v1, p0, Lr4/e;->c:Lr4/b;

    .line 25
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .line 1
    iget-object v0, p0, Lr4/e;->b:Lr4/c;

    .line 3
    check-cast v0, Lr4/f;

    .line 5
    invoke-virtual {v0, p2}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p3, :cond_14

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_12

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    move v1, v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    const/4 v1, 0x1

    .line 22
    :goto_15
    const-string v2, "lib"

    .line 24
    if-eqz v1, :cond_23

    .line 26
    new-instance p3, Ljava/io/File;

    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    return-object p3

    .line 36
    :cond_23
    new-instance v1, Ljava/io/File;

    .line 38
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 41
    move-result-object p1

    .line 42
    const-string v0, "."

    .line 44
    invoke-static {p2, v0, p3}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    return-object v1
.end method

.method public final b(Landroid/content/Context;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_27

    .line 3
    const-string v0, "pl_droidsonroids_gif"

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_e

    .line 13
    move v1, v3

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v1, v2

    .line 16
    :goto_f
    if-nez v1, :cond_1f

    .line 18
    new-array v1, v3, [Ljava/lang/Object;

    .line 20
    aput-object v0, v1, v2

    .line 22
    const-string v2, "Beginning load of %s..."

    .line 24
    invoke-static {v2, v1}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lr4/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    const-string v0, "Given library is either null or empty"

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1

    .line 40
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    const-string v0, "Given context is null"

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eqz v0, :cond_1a

    .line 17
    new-array v0, v5, [Ljava/lang/Object;

    .line 19
    aput-object v3, v0, v4

    .line 21
    const-string v2, "%s already loaded previously!"

    .line 23
    invoke-static {v2, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-void

    .line 27
    :cond_1a
    const/4 v6, 0x2

    .line 28
    :try_start_1b
    iget-object v0, v1, Lr4/e;->b:Lr4/c;

    .line 30
    check-cast v0, Lr4/f;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static/range {p2 .. p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "%s (%s) was loaded normally!"

    .line 45
    new-array v7, v6, [Ljava/lang/Object;

    .line 47
    aput-object v3, v7, v4

    .line 49
    aput-object p3, v7, v5

    .line 51
    invoke-static {v0, v7}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1b .. :try_end_35} :catch_36

    .line 54
    return-void

    .line 55
    :catch_36
    move-exception v0

    .line 56
    new-array v7, v5, [Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    aput-object v0, v7, v4

    .line 64
    const-string v0, "Loading the library normally failed: %s"

    .line 66
    invoke-static {v0, v7}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-array v0, v6, [Ljava/lang/Object;

    .line 71
    aput-object v3, v0, v4

    .line 73
    aput-object p3, v0, v5

    .line 75
    const-string v7, "%s (%s) was not loaded normally, re-linking..."

    .line 77
    invoke-static {v7, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual/range {p0 .. p3}, Lr4/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_5b

    .line 90
    goto/16 :goto_164

    .line 92
    :cond_5b
    const-string v7, "lib"

    .line 94
    invoke-virtual {v2, v7, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 97
    move-result-object v7

    .line 98
    invoke-virtual/range {p0 .. p3}, Lr4/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 101
    move-result-object v8

    .line 102
    iget-object v9, v1, Lr4/e;->b:Lr4/c;

    .line 104
    check-cast v9, Lr4/f;

    .line 106
    invoke-virtual {v9, v3}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v9

    .line 110
    new-instance v10, Lr4/d;

    .line 112
    invoke-direct {v10, v9}, Lr4/d;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v7, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 118
    move-result-object v7

    .line 119
    if-nez v7, :cond_79

    .line 121
    goto :goto_93

    .line 122
    :cond_79
    array-length v9, v7

    .line 123
    move v10, v4

    .line 124
    :goto_7b
    if-ge v10, v9, :cond_93

    .line 126
    aget-object v11, v7, v10

    .line 128
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 135
    move-result-object v13

    .line 136
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v12

    .line 140
    if-nez v12, :cond_90

    .line 142
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 145
    :cond_90
    add-int/lit8 v10, v10, 0x1

    .line 147
    goto :goto_7b

    .line 148
    :cond_93
    :goto_93
    iget-object v7, v1, Lr4/e;->c:Lr4/b;

    .line 150
    iget-object v8, v1, Lr4/e;->b:Lr4/c;

    .line 152
    check-cast v8, Lr4/f;

    .line 154
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 159
    array-length v9, v8

    .line 160
    if-lez v9, :cond_a2

    .line 162
    goto :goto_c2

    .line 163
    :cond_a2
    sget-object v8, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 165
    if-eqz v8, :cond_af

    .line 167
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_ad

    .line 173
    goto :goto_af

    .line 174
    :cond_ad
    move v9, v4

    .line 175
    goto :goto_b0

    .line 176
    :cond_af
    :goto_af
    move v9, v5

    .line 177
    :goto_b0
    if-nez v9, :cond_bc

    .line 179
    new-array v9, v6, [Ljava/lang/String;

    .line 181
    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 183
    aput-object v10, v9, v4

    .line 185
    aput-object v8, v9, v5

    .line 187
    move-object v8, v9

    .line 188
    goto :goto_c2

    .line 189
    :cond_bc
    new-array v8, v5, [Ljava/lang/String;

    .line 191
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 193
    aput-object v9, v8, v4

    .line 195
    :goto_c2
    iget-object v9, v1, Lr4/e;->b:Lr4/c;

    .line 197
    check-cast v9, Lr4/f;

    .line 199
    invoke-virtual {v9, v3}, Lr4/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-result-object v9

    .line 203
    check-cast v7, Lr4/a;

    .line 205
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    :try_start_cf
    invoke-static {v2, v8, v9, v1}, Lr4/a;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lr4/e;)Lr4/a$a;

    .line 211
    move-result-object v10
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_19e

    .line 212
    if-eqz v10, :cond_185

    .line 214
    move v2, v4

    .line 215
    :goto_d6
    add-int/lit8 v8, v2, 0x1

    .line 217
    const/4 v11, 0x5

    .line 218
    if-ge v2, v11, :cond_15d

    .line 220
    :try_start_db
    const-string v2, "Found %s! Extracting..."

    .line 222
    new-array v11, v5, [Ljava/lang/Object;

    .line 224
    aput-object v9, v11, v4

    .line 226
    invoke-static {v2, v11}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_132

    .line 229
    :try_start_e4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 232
    move-result v2

    .line 233
    if-nez v2, :cond_f1

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 238
    move-result v2
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ee} :catch_158
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_132

    .line 239
    if-nez v2, :cond_f1

    .line 241
    goto :goto_158

    .line 242
    :cond_f1
    :try_start_f1
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    .line 244
    iget-object v11, v10, Lr4/a$a;->b:Ljava/util/zip/ZipEntry;

    .line 246
    invoke-virtual {v2, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 249
    move-result-object v2
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_f1 .. :try_end_f9} :catch_150
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f9} :catch_150
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_145

    .line 250
    :try_start_f9
    new-instance v11, Ljava/io/FileOutputStream;

    .line 252
    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_f9 .. :try_end_fe} :catch_151
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fe} :catch_151
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_13f

    .line 255
    const/16 v12, 0x1000

    .line 257
    :try_start_100
    new-array v12, v12, [B

    .line 259
    const-wide/16 v13, 0x0

    .line 261
    :goto_104
    invoke-virtual {v2, v12}, Ljava/io/InputStream;->read([B)I

    .line 264
    move-result v15

    .line 265
    const/4 v7, -0x1

    .line 266
    if-ne v15, v7, :cond_134

    .line 268
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 271
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 281
    move-result-wide v17
    :try_end_119
    .catch Ljava/io/FileNotFoundException; {:try_start_100 .. :try_end_119} :catch_152
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_119} :catch_152
    .catchall {:try_start_100 .. :try_end_119} :catchall_13c

    .line 282
    cmp-long v7, v13, v17

    .line 284
    if-eqz v7, :cond_11e

    .line 286
    goto :goto_152

    .line 287
    :cond_11e
    :try_start_11e
    invoke-static {v2}, Lr4/a;->a(Ljava/io/Closeable;)V

    .line 290
    invoke-static {v11}, Lr4/a;->a(Ljava/io/Closeable;)V

    .line 293
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 296
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 299
    invoke-virtual {v0, v5}, Ljava/io/File;->setWritable(Z)Z
    :try_end_12d
    .catchall {:try_start_11e .. :try_end_12d} :catchall_132

    .line 302
    :try_start_12d
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_12f} :catch_164

    .line 304
    if-eqz v2, :cond_164

    .line 306
    goto :goto_161

    .line 307
    :catchall_132
    move-exception v0

    .line 308
    goto :goto_19c

    .line 309
    :cond_134
    :try_start_134
    invoke-virtual {v11, v12, v4, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_137
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_137} :catch_152
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_152
    .catchall {:try_start_134 .. :try_end_137} :catchall_13c

    .line 312
    int-to-long v4, v15

    .line 313
    add-long/2addr v13, v4

    .line 314
    const/4 v4, 0x0

    .line 315
    const/4 v5, 0x1

    .line 316
    goto :goto_104

    .line 317
    :catchall_13c
    move-exception v0

    .line 318
    move-object v7, v11

    .line 319
    goto :goto_141

    .line 320
    :catchall_13f
    move-exception v0

    .line 321
    const/4 v7, 0x0

    .line 322
    :goto_141
    move-object/from16 v16, v7

    .line 324
    move-object v7, v2

    .line 325
    goto :goto_149

    .line 326
    :catchall_145
    move-exception v0

    .line 327
    const/4 v7, 0x0

    .line 328
    const/16 v16, 0x0

    .line 330
    :goto_149
    :try_start_149
    invoke-static {v7}, Lr4/a;->a(Ljava/io/Closeable;)V

    .line 333
    invoke-static/range {v16 .. v16}, Lr4/a;->a(Ljava/io/Closeable;)V

    .line 336
    throw v0

    .line 337
    :catch_150
    const/4 v2, 0x0

    .line 338
    :catch_151
    const/4 v11, 0x0

    .line 339
    :catch_152
    :goto_152
    invoke-static {v2}, Lr4/a;->a(Ljava/io/Closeable;)V

    .line 342
    invoke-static {v11}, Lr4/a;->a(Ljava/io/Closeable;)V
    :try_end_158
    .catchall {:try_start_149 .. :try_end_158} :catchall_132

    .line 345
    :catch_158
    :goto_158
    move v2, v8

    .line 346
    const/4 v4, 0x0

    .line 347
    const/4 v5, 0x1

    .line 348
    goto/16 :goto_d6

    .line 350
    :cond_15d
    :try_start_15d
    iget-object v2, v10, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    .line 352
    if-eqz v2, :cond_164

    .line 354
    :goto_161
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_164} :catch_164

    .line 357
    :catch_164
    :cond_164
    :goto_164
    iget-object v2, v1, Lr4/e;->b:Lr4/c;

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 362
    move-result-object v0

    .line 363
    check-cast v2, Lr4/f;

    .line 365
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 371
    iget-object v0, v1, Lr4/e;->a:Ljava/util/HashSet;

    .line 373
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 376
    new-array v0, v6, [Ljava/lang/Object;

    .line 378
    const/4 v2, 0x0

    .line 379
    aput-object v3, v0, v2

    .line 381
    const/4 v2, 0x1

    .line 382
    aput-object p3, v0, v2

    .line 384
    const-string v2, "%s (%s) was re-linked!"

    .line 386
    invoke-static {v2, v0}, Lr4/e;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    return-void

    .line 390
    :cond_185
    :try_start_185
    invoke-static {v2, v9}, Lr4/a;->c(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    .line 393
    move-result-object v0
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_189} :catch_18a
    .catchall {:try_start_185 .. :try_end_189} :catchall_132

    .line 394
    goto :goto_196

    .line 395
    :catch_18a
    move-exception v0

    .line 396
    move-object v2, v0

    .line 397
    const/4 v3, 0x1

    .line 398
    :try_start_18d
    new-array v0, v3, [Ljava/lang/String;

    .line 400
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 403
    move-result-object v2

    .line 404
    const/4 v3, 0x0

    .line 405
    aput-object v2, v0, v3

    .line 407
    :goto_196
    new-instance v2, Lpl/droidsonroids/relinker/MissingLibraryException;

    .line 409
    invoke-direct {v2, v9, v8, v0}, Lpl/droidsonroids/relinker/MissingLibraryException;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 412
    throw v2
    :try_end_19c
    .catchall {:try_start_18d .. :try_end_19c} :catchall_132

    .line 413
    :goto_19c
    move-object v7, v10

    .line 414
    goto :goto_1a0

    .line 415
    :catchall_19e
    move-exception v0

    .line 416
    const/4 v7, 0x0

    .line 417
    :goto_1a0
    if-eqz v7, :cond_1a9

    .line 419
    :try_start_1a2
    iget-object v2, v7, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    .line 421
    if-eqz v2, :cond_1a9

    .line 423
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a9} :catch_1a9

    .line 426
    :catch_1a9
    :cond_1a9
    throw v0
.end method
