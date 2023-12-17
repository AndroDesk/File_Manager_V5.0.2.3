.class public Lcom/android/fileexplorer/provider/FileExplorerFileProvider;
.super Landroidx/core/content/FileProvider;
.source "FileExplorerFileProvider.java"


# static fields
.field public static final CALL_METHOD_MIRROR_BATCH_QUERY:Ljava/lang/String; = "batchQuery"

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final FILE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.fileexplorer.myprovider"

.field public static final FILE_PROVIDER_SCHEME:Ljava/lang/String; = "content"

.field private static final TAG:Ljava/lang/String; = "FileExplorerFileProvider"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "_display_name"

    .line 3
    const-string v1, "_size"

    .line 5
    const-string v2, "_data"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    .line 4
    return-void
.end method

.method private callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    .line 1
    const-string v0, "uri"

    .line 3
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/net/Uri;

    .line 9
    new-instance v2, Landroid/os/Bundle;

    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    const-string v3, "android:isChildDocument"

    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v3

    .line 20
    const-string v4, "result"

    .line 22
    const-string v5, "android.content.extra.TARGET_URI"

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v3, :cond_6c

    .line 28
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 31
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_62

    .line 44
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p0, v1, p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/net/Uri;

    .line 57
    if-eqz p2, :cond_5d

    .line 59
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 62
    move-result-object p3

    .line 63
    if-eqz p3, :cond_5b

    .line 65
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    const-string v0, "com.android.fileexplorer.myprovider"

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_5b

    .line 77
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5b

    .line 91
    goto :goto_5c

    .line 92
    :cond_5b
    move v6, v7

    .line 93
    :goto_5c
    move v7, v6

    .line 94
    :cond_5d
    invoke-virtual {v2, v4, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    goto/16 :goto_2cb

    .line 99
    :cond_62
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 101
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p1

    .line 109
    :cond_6c
    const-string v3, "android:createDocument"

    .line 111
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 115
    const-string v8, "_display_name"

    .line 117
    if-eqz v3, :cond_bb

    .line 119
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 122
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, v1, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p3, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_2cb

    .line 142
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 145
    move-result-object p2

    .line 146
    if-eqz p2, :cond_b1

    .line 148
    new-instance p3, Ljava/io/File;

    .line 150
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_9c
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_2cb

    .line 163
    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a9} :catch_ab

    .line 170
    goto/16 :goto_2cb

    .line 172
    :catch_ab
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    goto/16 :goto_2cb

    .line 178
    :cond_b1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 180
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 183
    move-result-object p2

    .line 184
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1

    .line 188
    :cond_bb
    const-string v3, "android:renameDocument"

    .line 190
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_110

    .line 196
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 199
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, v1, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p3, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_10a

    .line 223
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 226
    move-result-object p2

    .line 227
    if-eqz p2, :cond_100

    .line 229
    new-instance p3, Ljava/io/File;

    .line 231
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 234
    move-result-object v1

    .line 235
    invoke-direct {p3, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 241
    move-result-object p1

    .line 242
    invoke-static {p2, p1, v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_2cb

    .line 248
    invoke-static {p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    goto/16 :goto_2cb

    .line 257
    :cond_100
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 259
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 262
    move-result-object p2

    .line 263
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 266
    throw p1

    .line 267
    :cond_10a
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 269
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 272
    throw p1

    .line 273
    :cond_110
    const-string v3, "android:deleteDocument"

    .line 275
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_2aa

    .line 281
    const-string v3, "android:removeDocument"

    .line 283
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v3

    .line 287
    if-eqz v3, :cond_122

    .line 289
    goto/16 :goto_2aa

    .line 291
    :cond_122
    const-string v3, "android:copyDocument"

    .line 293
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v3

    .line 297
    if-eqz v3, :cond_1a6

    .line 299
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 302
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 305
    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 312
    move-result-object p1

    .line 313
    if-eqz p1, :cond_19c

    .line 315
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 318
    move-result-object p2

    .line 319
    check-cast p2, Landroid/net/Uri;

    .line 321
    if-eqz p2, :cond_196

    .line 323
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 326
    move-result-object p3

    .line 327
    if-eqz p3, :cond_18c

    .line 329
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_18c

    .line 335
    new-instance v3, Ljava/io/File;

    .line 337
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 340
    move-result-object p3

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 344
    move-result-object v4

    .line 345
    invoke-direct {v3, p3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 351
    move-result-object p3

    .line 352
    invoke-direct {p0, v1, p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 358
    move-result-object p3

    .line 359
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 365
    move-result-object p2

    .line 366
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 369
    move-result-object p3

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    move-result-object p1

    .line 378
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    move-result-object p1

    .line 382
    invoke-static {p2, v1, p3, p1, v7}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copySingleFileToLocal(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)I

    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_2cb

    .line 388
    invoke-static {v3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 395
    goto/16 :goto_2cb

    .line 397
    :cond_18c
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 399
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 402
    move-result-object p2

    .line 403
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 406
    throw p1

    .line 407
    :cond_196
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 409
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 412
    throw p1

    .line 413
    :cond_19c
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 415
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 418
    move-result-object p2

    .line 419
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 422
    throw p1

    .line 423
    :cond_1a6
    const-string v0, "android:moveDocument"

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_1ec

    .line 431
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 434
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 437
    move-result-object p1

    .line 438
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 444
    move-result-object p1

    .line 445
    if-eqz p1, :cond_1e2

    .line 447
    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 450
    move-result-object p2

    .line 451
    check-cast p2, Landroid/net/Uri;

    .line 453
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 456
    move-result-object p3

    .line 457
    invoke-direct {p0, v1, p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 463
    move-result-object p3

    .line 464
    invoke-direct {p0, p2, p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 470
    move-result-object p3

    .line 471
    invoke-static {p3, p1, p2, v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    .line 474
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 477
    move-result-object p1

    .line 478
    invoke-static {p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 481
    goto/16 :goto_2cb

    .line 483
    :cond_1e2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 485
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 488
    move-result-object p2

    .line 489
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 492
    throw p1

    .line 493
    :cond_1ec
    const-string v0, "batchQuery"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_2a5

    .line 501
    const-string p1, "FileExplorerFileProvider"

    .line 503
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string p2, "uris"

    .line 508
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 511
    move-result-object p2

    .line 512
    const/4 v0, 0x0

    .line 513
    if-nez p2, :cond_208

    .line 515
    const-string p2, "batchQuery, uri is null"

    .line 517
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-object v0

    .line 521
    :cond_208
    array-length v1, p2

    .line 522
    const-class v3, [Landroid/net/Uri;

    .line 524
    invoke-static {p2, v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    .line 527
    move-result-object p2

    .line 528
    check-cast p2, [Landroid/net/Uri;

    .line 530
    const-string v1, "projection"

    .line 532
    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 535
    move-result-object p3

    .line 536
    if-nez p3, :cond_21a

    .line 538
    return-object v0

    .line 539
    :cond_21a
    array-length v1, p2

    .line 540
    array-length v3, p3

    .line 541
    const/4 v5, 0x2

    .line 542
    new-array v5, v5, [I

    .line 544
    aput v3, v5, v6

    .line 546
    aput v1, v5, v7

    .line 548
    const-class v1, Ljava/lang/String;

    .line 550
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 553
    move-result-object v1

    .line 554
    check-cast v1, [[Ljava/lang/String;

    .line 556
    move v3, v7

    .line 557
    :goto_22c
    array-length v5, p2

    .line 558
    if-ge v3, v5, :cond_2a1

    .line 560
    aget-object v5, p2, v3

    .line 562
    invoke-direct {p0, v5}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 565
    move-result-object v6

    .line 566
    if-nez v6, :cond_24c

    .line 568
    new-instance p2, Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    const-string p3, "file is null, uri = "

    .line 575
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    move-result-object p2

    .line 585
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-object v0

    .line 589
    :cond_24c
    move v5, v7

    .line 590
    :goto_24d
    array-length v9, p3

    .line 591
    if-ge v5, v9, :cond_29e

    .line 593
    aget-object v9, p3, v5

    .line 595
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    move-result v10

    .line 599
    if-eqz v10, :cond_261

    .line 601
    aget-object v9, v1, v3

    .line 603
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 606
    move-result-object v10

    .line 607
    aput-object v10, v9, v5

    .line 609
    goto :goto_29b

    .line 610
    :cond_261
    const-string v10, "_size"

    .line 612
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    move-result v10

    .line 616
    if-eqz v10, :cond_276

    .line 618
    aget-object v9, v1, v3

    .line 620
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 623
    move-result-wide v10

    .line 624
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 627
    move-result-object v10

    .line 628
    aput-object v10, v9, v5

    .line 630
    goto :goto_29b

    .line 631
    :cond_276
    const-string v10, "_data"

    .line 633
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    move-result v10

    .line 637
    if-eqz v10, :cond_287

    .line 639
    aget-object v9, v1, v3

    .line 641
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 644
    move-result-object v10

    .line 645
    aput-object v10, v9, v5

    .line 647
    goto :goto_29b

    .line 648
    :cond_287
    const-string v10, "date_modified"

    .line 650
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    move-result v9

    .line 654
    if-eqz v9, :cond_29b

    .line 656
    aget-object v9, v1, v3

    .line 658
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 661
    move-result-wide v10

    .line 662
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 665
    move-result-object v10

    .line 666
    aput-object v10, v9, v5

    .line 668
    :cond_29b
    :goto_29b
    add-int/lit8 v5, v5, 0x1

    .line 670
    goto :goto_24d

    .line 671
    :cond_29e
    add-int/lit8 v3, v3, 0x1

    .line 673
    goto :goto_22c

    .line 674
    :cond_2a1
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 677
    goto :goto_2cb

    .line 678
    :cond_2a5
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 681
    move-result-object p1

    .line 682
    return-object p1

    .line 683
    :cond_2aa
    :goto_2aa
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkUriValid(Landroid/net/Uri;)V

    .line 686
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 689
    move-result-object p1

    .line 690
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->checkAuthority(Ljava/lang/String;)V

    .line 693
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 696
    move-result-object p1

    .line 697
    if-eqz p1, :cond_2cc

    .line 699
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 702
    move-result-object p2

    .line 703
    invoke-direct {p0, v1, p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I

    .line 706
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 709
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 712
    move-result-object p1

    .line 713
    invoke-static {p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 716
    :cond_2cb
    :goto_2cb
    return-object v2

    .line 717
    :cond_2cc
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 719
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 722
    move-result-object p2

    .line 723
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 726
    throw p1
.end method

.method private checkAuthority(Ljava/lang/String;)V
    .registers 6

    .line 1
    const-string v0, "com.android.fileexplorer.myprovider"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v3, "Requested authority "

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " doesn\'t match provider "

    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v1
.end method

.method private checkUriValid(Landroid/net/Uri;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 6
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 9
    throw p1
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1f

    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v1, v2, :cond_8

    .line 8
    goto :goto_1f

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    array-length v1, p0

    .line 17
    move v3, v0

    .line 18
    :goto_11
    if-ge v3, v1, :cond_1f

    .line 20
    aget-object v4, p0, v3

    .line 22
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1c

    .line 28
    return v2

    .line 29
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    :goto_1f
    return v0
.end method

.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    .line 3
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4

    .line 1
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 11

    .line 1
    :try_start_0
    const-class v0, Landroid/content/ContentProvider;

    .line 3
    const-string v1, "enforceReadPermissionInner"

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, Landroid/net/Uri;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    const-class v4, Ljava/lang/String;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v4, v3, v6

    .line 18
    const-class v4, Landroid/os/IBinder;

    .line 20
    const/4 v7, 0x2

    .line 21
    aput-object v4, v3, v7

    .line 23
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0

    .line 27
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    aput-object p1, v1, v5

    .line 31
    aput-object p2, v1, v6

    .line 33
    const/4 p1, 0x0

    .line 34
    aput-object p1, v1, v7

    .line 36
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2d} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2d} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 46
    return p1

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    goto :goto_3c

    .line 52
    :catch_33
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    goto :goto_3c

    .line 57
    :catch_38
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_3c
    const/4 p1, -0x1

    .line 62
    return p1
.end method

.method private enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;)I
    .registers 11

    .line 1
    :try_start_0
    const-class v0, Landroid/content/ContentProvider;

    .line 3
    const-string v1, "enforceWritePermissionInner"

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, Landroid/net/Uri;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    const-class v4, Ljava/lang/String;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v4, v3, v6

    .line 18
    const-class v4, Landroid/os/IBinder;

    .line 20
    const/4 v7, 0x2

    .line 21
    aput-object v4, v3, v7

    .line 23
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0

    .line 27
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    aput-object p1, v1, v5

    .line 31
    aput-object p2, v1, v6

    .line 33
    const/4 p1, 0x0

    .line 34
    aput-object p1, v1, v7

    .line 36
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2d} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2d} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 46
    return p1

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    goto :goto_3c

    .line 52
    :catch_33
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    goto :goto_3c

    .line 57
    :catch_38
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_3c
    const/4 p1, -0x1

    .line 62
    return p1
.end method

.method private getFile(Landroid/net/Uri;)Ljava/io/File;
    .registers 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "mStrategy"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 22
    move-result-object v2

    .line 23
    const-string v3, "getFileForUri"

    .line 25
    new-array v4, v1, [Ljava/lang/Class;

    .line 27
    const-class v5, Landroid/net/Uri;

    .line 29
    const/4 v6, 0x0

    .line 30
    aput-object v5, v4, v6

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    aput-object p1, v1, v6

    .line 44
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/io/File;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 50
    return-object p1

    .line 51
    :catch_32
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public static getFileFromUri(Landroid/net/Uri;)Ljava/io/File;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.fileexplorer.myprovider"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_28

    .line 14
    const-class v0, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v2, "authority doesn\'t match "

    .line 22
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v1

    .line 41
    :cond_28
    invoke-static {p0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFilePathForUri(Landroid/net/Uri;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_38

    .line 51
    new-instance v0, Ljava/io/File;

    .line 53
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    return-object v0

    .line 57
    :cond_38
    return-object v1
.end method

.method public static getFilePathForUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "_data"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    const/4 v7, 0x0

    .line 8
    :try_start_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v1

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_35
    .catchall {:try_start_7 .. :try_end_17} :catchall_33

    .line 24
    if-eqz p0, :cond_2f

    .line 26
    :try_start_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2f

    .line 32
    invoke-static {p0, v0}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_2d
    .catchall {:try_start_19 .. :try_end_27} :catchall_53

    .line 40
    if-nez v1, :cond_2f

    .line 42
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 45
    return-object v0

    .line 46
    :catch_2d
    move-exception v0

    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    :goto_2f
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 51
    goto :goto_52

    .line 52
    :catchall_33
    move-exception v0

    .line 53
    goto :goto_55

    .line 54
    :catch_35
    move-exception v0

    .line 55
    move-object p0, v7

    .line 56
    :goto_37
    :try_start_37
    const-string v1, "FileExplorerFileProvider"

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v3, "getFilePathForUri error: "

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_37 .. :try_end_51} :catchall_53

    .line 82
    goto :goto_2f

    .line 83
    :goto_52
    return-object v7

    .line 84
    :catchall_53
    move-exception v0

    .line 85
    move-object v7, p0

    .line 86
    :goto_55
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw v0
.end method

.method public static getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.android.fileexplorer.myprovider"

    .line 7
    invoke-static {v0, v1, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    return-object p0

    .line 12
    :catch_b
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    move-result-object p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p1

    .line 6
    :catch_5
    move-exception p2

    .line 7
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 9
    const-string v0, "Failed call "

    .line 11
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    throw p3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-super {p0, p1}, Landroidx/core/content/FileProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v1, "*/*"

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_27

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->getMimeTypeFromMediaDatabase(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    :cond_27
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1
    const-string v0, "_data"

    .line 3
    if-eqz p2, :cond_f

    .line 5
    invoke-static {p2, v0}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_f

    .line 11
    invoke-super/range {p0 .. p5}, Landroidx/core/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    if-nez p2, :cond_25

    .line 18
    sget-object v1, Lcom/android/fileexplorer/model/Util;->TENCENT_MIRROR_PERMISSION:Ljava/util/ArrayList;

    .line 20
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getCallingPackageName(Landroid/content/ContentProvider;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_20

    .line 30
    sget-object p2, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->COLUMNS:[Ljava/lang/String;

    .line 32
    goto :goto_25

    .line 33
    :cond_20
    invoke-super/range {p0 .. p5}, Landroidx/core/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_25
    :goto_25
    move-object v2, p2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFile(Landroid/net/Uri;)Ljava/io/File;

    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_36

    .line 45
    move-object v0, p0

    .line 46
    move-object v1, p1

    .line 47
    move-object v3, p3

    .line 48
    move-object v4, p4

    .line 49
    move-object v5, p5

    .line 50
    invoke-super/range {v0 .. v5}, Landroidx/core/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_36
    array-length p1, v2

    .line 56
    new-array p1, p1, [Ljava/lang/String;

    .line 58
    array-length p3, v2

    .line 59
    new-array p3, p3, [Ljava/lang/Object;

    .line 61
    array-length p4, v2

    .line 62
    const/4 p5, 0x0

    .line 63
    move v1, p5

    .line 64
    :goto_3f
    if-ge p5, p4, :cond_82

    .line 66
    aget-object v3, v2, p5

    .line 68
    const-string v4, "_display_name"

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_57

    .line 76
    aput-object v4, p1, v1

    .line 78
    add-int/lit8 v3, v1, 0x1

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    aput-object v4, p3, v1

    .line 86
    :goto_55
    move v1, v3

    .line 87
    goto :goto_7f

    .line 88
    :cond_57
    const-string v4, "_size"

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_6e

    .line 96
    aput-object v4, p1, v1

    .line 98
    add-int/lit8 v3, v1, 0x1

    .line 100
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 103
    move-result-wide v4

    .line 104
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    move-result-object v4

    .line 108
    aput-object v4, p3, v1

    .line 110
    goto :goto_55

    .line 111
    :cond_6e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_7f

    .line 117
    aput-object v0, p1, v1

    .line 119
    add-int/lit8 v3, v1, 0x1

    .line 121
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    aput-object v4, p3, v1

    .line 127
    goto :goto_55

    .line 128
    :cond_7f
    :goto_7f
    add-int/lit8 p5, p5, 0x1

    .line 130
    goto :goto_3f

    .line 131
    :cond_82
    invoke-static {p1, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-static {p3, v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 138
    move-result-object p2

    .line 139
    new-instance p3, Landroid/database/MatrixCursor;

    .line 141
    const/4 p4, 0x1

    .line 142
    invoke-direct {p3, p1, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p3, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 148
    return-object p3
.end method
