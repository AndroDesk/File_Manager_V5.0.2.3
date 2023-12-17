.class public final Lj0/e;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/e$a;
    }
.end annotation


# static fields
.field public static final a:Lj0/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lj0/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj0/d;-><init>(I)V

    .line 7
    sput-object v0, Lj0/e;->a:Lj0/d;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lj0/f;)Lj0/l;
    .registers 22

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, v0, Lj0/f;->a:Ljava/lang/String;

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_1a7

    .line 20
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v7, v0, Lj0/f;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_190

    .line 30
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 32
    const/16 v6, 0x40

    .line 34
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    array-length v6, v1

    .line 46
    move v7, v4

    .line 47
    :goto_2e
    if-ge v7, v6, :cond_3c

    .line 49
    aget-object v8, v1, v7

    .line 51
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 60
    goto :goto_2e

    .line 61
    :cond_3c
    sget-object v1, Lj0/e;->a:Lj0/d;

    .line 63
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    iget-object v1, v0, Lj0/f;->d:Ljava/util/List;

    .line 68
    if-eqz v1, :cond_46

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-static {v2, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 74
    move-result-object v1

    .line 75
    :goto_4a
    move v2, v4

    .line 76
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    move-result v6

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x1

    .line 82
    if-ge v2, v6, :cond_93

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v9

    .line 90
    check-cast v9, Ljava/util/Collection;

    .line 92
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    sget-object v9, Lj0/e;->a:Lj0/d;

    .line 97
    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v9

    .line 104
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 107
    move-result v10

    .line 108
    if-eq v9, v10, :cond_6e

    .line 110
    goto :goto_87

    .line 111
    :cond_6e
    move v9, v4

    .line 112
    :goto_6f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result v10

    .line 116
    if-ge v9, v10, :cond_8c

    .line 118
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 122
    check-cast v10, [B

    .line 124
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v11

    .line 128
    check-cast v11, [B

    .line 130
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_89

    .line 136
    :goto_87
    move v6, v4

    .line 137
    goto :goto_8d

    .line 138
    :cond_89
    add-int/lit8 v9, v9, 0x1

    .line 140
    goto :goto_6f

    .line 141
    :cond_8c
    move v6, v8

    .line 142
    :goto_8d
    if-eqz v6, :cond_90

    .line 144
    goto :goto_94

    .line 145
    :cond_90
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_4b

    .line 148
    :cond_93
    move-object v5, v7

    .line 149
    :goto_94
    if-nez v5, :cond_9c

    .line 151
    new-instance v0, Lj0/l;

    .line 153
    invoke-direct {v0, v8, v7}, Lj0/l;-><init>(I[Lj0/m;)V

    .line 156
    return-object v0

    .line 157
    :cond_9c
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    .line 161
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v3, Landroid/net/Uri$Builder;

    .line 166
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 169
    const-string v5, "content"

    .line 171
    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 182
    move-result-object v3

    .line 183
    new-instance v6, Landroid/net/Uri$Builder;

    .line 185
    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 188
    invoke-virtual {v6, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 195
    move-result-object v1

    .line 196
    const-string v5, "file"

    .line 198
    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 205
    move-result-object v1

    .line 206
    :try_start_cd
    const-string v9, "_id"

    .line 208
    const-string v10, "file_id"

    .line 210
    const-string v11, "font_ttc_index"

    .line 212
    const-string v12, "font_variation_settings"

    .line 214
    const-string v13, "font_weight"

    .line 216
    const-string v14, "font_italic"

    .line 218
    const-string v15, "result_code"

    .line 220
    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    .line 223
    move-result-object v11

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 227
    move-result-object v9

    .line 228
    const-string v12, "query = ?"

    .line 230
    new-array v13, v8, [Ljava/lang/String;

    .line 232
    iget-object v0, v0, Lj0/f;->c:Ljava/lang/String;

    .line 234
    aput-object v0, v13, v4

    .line 236
    const/4 v14, 0x0

    .line 237
    const/4 v15, 0x0

    .line 238
    move-object v10, v3

    .line 239
    invoke-static/range {v9 .. v15}, Lj0/e$a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 242
    move-result-object v7

    .line 243
    if-eqz v7, :cond_176

    .line 245
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 248
    move-result v0

    .line 249
    if-lez v0, :cond_176

    .line 251
    const-string v0, "result_code"

    .line 253
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 256
    move-result v0

    .line 257
    new-instance v2, Ljava/util/ArrayList;

    .line 259
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const-string v5, "_id"

    .line 264
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 267
    move-result v5

    .line 268
    const-string v6, "file_id"

    .line 270
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 273
    move-result v6

    .line 274
    const-string v9, "font_ttc_index"

    .line 276
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 279
    move-result v9

    .line 280
    const-string v10, "font_weight"

    .line 282
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 285
    move-result v10

    .line 286
    const-string v11, "font_italic"

    .line 288
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 291
    move-result v11

    .line 292
    :goto_123
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 295
    move-result v12

    .line 296
    if-eqz v12, :cond_176

    .line 298
    const/4 v12, -0x1

    .line 299
    if-eq v0, v12, :cond_133

    .line 301
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 304
    move-result v13

    .line 305
    move/from16 v19, v13

    .line 307
    goto :goto_135

    .line 308
    :cond_133
    move/from16 v19, v4

    .line 310
    :goto_135
    if-eq v9, v12, :cond_13e

    .line 312
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 315
    move-result v13

    .line 316
    move/from16 v16, v13

    .line 318
    goto :goto_140

    .line 319
    :cond_13e
    move/from16 v16, v4

    .line 321
    :goto_140
    if-ne v6, v12, :cond_14b

    .line 323
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 326
    move-result-wide v13

    .line 327
    invoke-static {v3, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 330
    move-result-object v13

    .line 331
    goto :goto_153

    .line 332
    :cond_14b
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 335
    move-result-wide v13

    .line 336
    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 339
    move-result-object v13

    .line 340
    :goto_153
    move-object v15, v13

    .line 341
    if-eq v10, v12, :cond_15b

    .line 343
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 346
    move-result v13

    .line 347
    goto :goto_15d

    .line 348
    :cond_15b
    const/16 v13, 0x190

    .line 350
    :goto_15d
    move/from16 v17, v13

    .line 352
    if-eq v11, v12, :cond_16a

    .line 354
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 357
    move-result v12

    .line 358
    if-ne v12, v8, :cond_16a

    .line 360
    move/from16 v18, v8

    .line 362
    goto :goto_16c

    .line 363
    :cond_16a
    move/from16 v18, v4

    .line 365
    :goto_16c
    new-instance v12, Lj0/m;

    .line 367
    move-object v14, v12

    .line 368
    invoke-direct/range {v14 .. v19}, Lj0/m;-><init>(Landroid/net/Uri;IIZI)V

    .line 371
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_175
    .catchall {:try_start_cd .. :try_end_175} :catchall_189

    .line 374
    goto :goto_123

    .line 375
    :cond_176
    if-eqz v7, :cond_17b

    .line 377
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_17b
    new-array v0, v4, [Lj0/m;

    .line 382
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 385
    move-result-object v0

    .line 386
    check-cast v0, [Lj0/m;

    .line 388
    new-instance v1, Lj0/l;

    .line 390
    invoke-direct {v1, v4, v0}, Lj0/l;-><init>(I[Lj0/m;)V

    .line 393
    return-object v1

    .line 394
    :catchall_189
    move-exception v0

    .line 395
    if-eqz v7, :cond_18f

    .line 397
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_18f
    throw v0

    .line 401
    :cond_190
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 403
    const-string v2, "Found content provider "

    .line 405
    const-string v4, ", but package was not "

    .line 407
    invoke-static {v2, v3, v4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move-result-object v2

    .line 411
    iget-object v0, v0, Lj0/f;->b:Ljava/lang/String;

    .line 413
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v0

    .line 420
    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 423
    throw v1

    .line 424
    :cond_1a7
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 426
    const-string v1, "No package found for authority: "

    .line 428
    invoke-static {v1, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    move-result-object v1

    .line 432
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 435
    throw v0
.end method
