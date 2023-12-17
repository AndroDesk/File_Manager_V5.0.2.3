.class public abstract Ln4/b;
.super Ln4/h;
.source "AbstractExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln4/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lm4/n;

.field public final e:La/b;


# direct methods
.method public constructor <init>(Lm4/n;La/b;Ln4/h$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p3}, Ln4/h;-><init>(Ln4/h$a;)V

    .line 4
    iput-object p1, p0, Ln4/b;->d:Lm4/n;

    .line 6
    iput-object p2, p0, Ln4/b;->e:La/b;

    .line 8
    return-void
.end method


# virtual methods
.method public final d()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 3
    return-object v0
.end method

.method public final g(Lk4/k;Lm4/g;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .registers 13

    .line 1
    iget-object v0, p2, Lm4/g;->v:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_13

    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x4

    .line 8
    if-ge v2, v3, :cond_a

    .line 10
    goto :goto_13

    .line 11
    :cond_a
    const/4 v2, 0x3

    .line 12
    aget-byte v0, v0, v2

    .line 14
    const/4 v2, 0x5

    .line 15
    invoke-static {v2, v0}, La/b;->J(IB)Z

    .line 18
    move-result v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    move v0, v1

    .line 21
    :goto_14
    if-eqz v0, :cond_1b

    .line 23
    iget-object v2, p0, Ln4/b;->e:La/b;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    :cond_1b
    sget-object v2, Lo4/b;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_27

    .line 36
    invoke-static {p3, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    :cond_27
    iget-object v3, p2, Lm4/b;->k:Ljava/lang/String;

    .line 42
    invoke-static {p4}, La/b;->O(Ljava/lang/String;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_30

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move-object p4, v3

    .line 50
    :goto_31
    new-instance v3, Ljava/io/File;

    .line 52
    const-string v4, ":\\\\"

    .line 54
    const-string v5, "_"

    .line 56
    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p4

    .line 60
    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    const-string v5, "[/\\\\]"

    .line 66
    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p4

    .line 70
    invoke-direct {v3, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 82
    move-result-object p4

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_62

    .line 89
    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_62

    .line 95
    invoke-static {p4, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p4

    .line 99
    :cond_62
    new-instance v4, Ljava/io/File;

    .line 101
    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_75

    .line 114
    invoke-static {p3, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p3

    .line 118
    :cond_75
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 121
    move-result p3

    .line 122
    if-eqz p3, :cond_1f0

    .line 124
    iget-object p3, p2, Lm4/b;->c:[B

    .line 126
    aget-byte p3, p3, v1

    .line 128
    const/4 p4, 0x6

    .line 129
    invoke-static {p4, p3}, La/b;->J(IB)Z

    .line 132
    move-result p3

    .line 133
    if-nez p3, :cond_1dc

    .line 135
    invoke-virtual {p1, p2}, Lk4/k;->e(Lm4/g;)Lm4/h;

    .line 138
    move-result-object p3

    .line 139
    if-eqz p3, :cond_1c7

    .line 141
    iget-object p4, p2, Lm4/b;->k:Ljava/lang/String;

    .line 143
    iget-object p3, p3, Lm4/b;->k:Ljava/lang/String;

    .line 145
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result p3

    .line 149
    if-eqz p3, :cond_1bf

    .line 151
    iget-boolean p3, p2, Lm4/b;->s:Z

    .line 153
    if-eqz p3, :cond_bf

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_18f

    .line 161
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_a8

    .line 167
    goto/16 :goto_18f

    .line 169
    :cond_a8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string p3, "Could not create directory: "

    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 191
    throw p1

    .line 192
    :cond_bf
    if-eqz v0, :cond_148

    .line 194
    new-instance p3, Ljava/lang/String;

    .line 196
    iget-wide v4, p2, Lm4/b;->h:J

    .line 198
    long-to-int p4, v4

    .line 199
    new-array p6, p4, [B

    .line 201
    invoke-virtual {p1, p6, v1, p4}, Lk4/k;->read([BII)I

    .line 204
    move-result p1

    .line 205
    if-ne p1, p4, :cond_140

    .line 207
    int-to-long v4, p4

    .line 208
    invoke-virtual {p5, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    .line 211
    invoke-direct {p3, p6}, Ljava/lang/String;-><init>([B)V

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 221
    move-result p1

    .line 222
    if-nez p1, :cond_f2

    .line 224
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_ea

    .line 234
    goto :goto_f2

    .line 235
    :cond_ea
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 237
    const-string p2, "Could not create parent directories"

    .line 239
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 242
    throw p1

    .line 243
    :cond_f2
    :goto_f2
    :try_start_f2
    new-array p1, v1, [Ljava/lang/String;

    .line 245
    invoke-static {p3, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 252
    move-result p4

    .line 253
    if-eqz p4, :cond_11c

    .line 255
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 258
    move-result p4

    .line 259
    if-eqz p4, :cond_105

    .line 261
    goto :goto_11c

    .line 262
    :cond_105
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 264
    new-instance p4, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    const-string p5, "Could not delete existing symlink "

    .line 271
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p4

    .line 281
    invoke-direct {p1, p4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 284
    throw p1

    .line 285
    :cond_11c
    :goto_11c
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 288
    move-result-object p4

    .line 289
    new-array p5, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 291
    invoke-static {p4, p1, p5}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_125
    .catch Ljava/lang/NoSuchMethodError; {:try_start_f2 .. :try_end_125} :catch_126

    .line 294
    goto :goto_18f

    .line 295
    :catch_126
    new-instance p1, Ljava/io/FileOutputStream;

    .line 297
    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 300
    :try_start_12b
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 303
    move-result-object p3

    .line 304
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_132
    .catchall {:try_start_12b .. :try_end_132} :catchall_136

    .line 307
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 310
    goto :goto_18f

    .line 311
    :catchall_136
    move-exception p2

    .line 312
    :try_start_137
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13b

    .line 315
    goto :goto_13f

    .line 316
    :catchall_13b
    move-exception p1

    .line 317
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 320
    :goto_13f
    throw p2

    .line 321
    :cond_140
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 323
    const-string p2, "Could not read complete entry"

    .line 325
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 328
    throw p1

    .line 329
    :cond_148
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 332
    move-result-object p3

    .line 333
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 336
    move-result p3

    .line 337
    if-nez p3, :cond_174

    .line 339
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 342
    move-result-object p3

    .line 343
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 346
    move-result p3

    .line 347
    if-eqz p3, :cond_15d

    .line 349
    goto :goto_174

    .line 350
    :cond_15d
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 352
    const-string p2, "Unable to create parent directories: "

    .line 354
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    move-result-object p2

    .line 358
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 361
    move-result-object p3

    .line 362
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object p2

    .line 369
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 372
    throw p1

    .line 373
    :cond_174
    :goto_174
    :try_start_174
    new-instance p3, Ljava/io/FileOutputStream;

    .line 375
    invoke-direct {p3, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_179} :catch_1b4

    .line 378
    :goto_179
    :try_start_179
    array-length p4, p6

    .line 379
    invoke-virtual {p1, p6, v1, p4}, Lk4/k;->read([BII)I

    .line 382
    move-result p4

    .line 383
    const/4 v2, -0x1

    .line 384
    if-eq p4, v2, :cond_18c

    .line 386
    invoke-virtual {p3, p6, v1, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 389
    int-to-long v4, p4

    .line 390
    invoke-virtual {p5, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->a(J)V

    .line 393
    invoke-virtual {p0}, Ln4/h;->f()V
    :try_end_18b
    .catchall {:try_start_179 .. :try_end_18b} :catchall_1aa

    .line 396
    goto :goto_179

    .line 397
    :cond_18c
    :try_start_18c
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_18f} :catch_1b4

    .line 400
    :cond_18f
    :goto_18f
    if-nez v0, :cond_1a9

    .line 402
    :try_start_191
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 405
    move-result-object p1

    .line 406
    iget-object p3, p2, Lm4/g;->v:[B

    .line 408
    invoke-static {p1, p3}, Lo4/a;->q(Ljava/nio/file/Path;[B)V

    .line 411
    iget-wide p3, p2, Lm4/b;->e:J

    .line 413
    invoke-static {p1, p3, p4}, Lo4/a;->r(Ljava/nio/file/Path;J)V
    :try_end_19f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_191 .. :try_end_19f} :catch_1a0

    .line 416
    goto :goto_1a9

    .line 417
    :catch_1a0
    iget-wide p1, p2, Lm4/b;->e:J

    .line 419
    invoke-static {p1, p2}, La/b;->v(J)J

    .line 422
    move-result-wide p1

    .line 423
    invoke-virtual {v3, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 426
    :cond_1a9
    :goto_1a9
    return-void

    .line 427
    :catchall_1aa
    move-exception p1

    .line 428
    :try_start_1ab
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1af

    .line 431
    goto :goto_1b3

    .line 432
    :catchall_1af
    move-exception p2

    .line 433
    :try_start_1b0
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 436
    :goto_1b3
    throw p1
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b4} :catch_1b4

    .line 437
    :catch_1b4
    move-exception p1

    .line 438
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 441
    move-result p2

    .line 442
    if-eqz p2, :cond_1be

    .line 444
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 447
    :cond_1be
    throw p1

    .line 448
    :cond_1bf
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 450
    const-string p2, "File header and local file header mismatch"

    .line 452
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 455
    throw p1

    .line 456
    :cond_1c7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 458
    const-string p3, "Could not read corresponding local file header for file header: "

    .line 460
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    move-result-object p3

    .line 464
    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    .line 466
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    move-result-object p2

    .line 473
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 476
    throw p1

    .line 477
    :cond_1dc
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 479
    const-string p3, "Entry with name "

    .line 481
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    move-result-object p3

    .line 485
    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    .line 487
    const-string p4, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    .line 489
    invoke-static {p3, p2, p4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    move-result-object p2

    .line 493
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 496
    throw p1

    .line 497
    :cond_1f0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 499
    const-string p3, "illegal file name that breaks out of the target directory: "

    .line 501
    invoke-static {p3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-result-object p3

    .line 505
    iget-object p2, p2, Lm4/b;->k:Ljava/lang/String;

    .line 507
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    move-result-object p2

    .line 514
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 517
    throw p1
.end method
