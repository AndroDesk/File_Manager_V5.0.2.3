.class Lcom/xiaomi/stat/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "ts"

    .line 5
    const-string v2, "EventManager"

    .line 7
    :try_start_6
    iget-object v4, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    .line 9
    invoke-static {v4}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    move-result-object v4

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    move-result-object v13

    .line 21
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 24
    move-result-wide v5

    .line 25
    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 28
    const/4 v5, 0x6

    .line 29
    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    .line 32
    move-result v6

    .line 33
    add-int/lit8 v6, v6, -0x7

    .line 35
    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/16 v5, 0xb

    .line 40
    const/4 v14, 0x0

    .line 41
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v5, 0xc

    .line 46
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v5, 0xd

    .line 51
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 54
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    move-result-wide v5

    .line 58
    const-string v15, "ts < ? and e != ?"

    .line 60
    const/4 v12, 0x2

    .line 61
    new-array v11, v12, [Ljava/lang/String;

    .line 63
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    aput-object v5, v11, v14

    .line 69
    const-string v5, "mistat_delete_event"

    .line 71
    const/4 v10, 0x1

    .line 72
    aput-object v5, v11, v10

    .line 74
    const-string v6, "events"

    .line 76
    filled-new-array {v0}, [Ljava/lang/String;

    .line 79
    move-result-object v7

    .line 80
    const/16 v16, 0x0

    .line 82
    const/16 v17, 0x0

    .line 84
    const-string v18, "ts ASC"

    .line 86
    move-object v5, v4

    .line 87
    move-object v8, v15

    .line 88
    move-object v9, v11

    .line 89
    move v3, v10

    .line 90
    move-object/from16 v10, v16

    .line 92
    move-object/from16 v19, v11

    .line 94
    move-object/from16 v11, v17

    .line 96
    move v14, v12

    .line 97
    move-object/from16 v12, v18

    .line 99
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 102
    move-result-object v5
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_66} :catch_120
    .catchall {:try_start_6 .. :try_end_66} :catchall_11d

    .line 103
    :try_start_66
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_113

    .line 109
    new-instance v7, Lcom/xiaomi/stat/aj;

    .line 111
    invoke-direct {v7}, Lcom/xiaomi/stat/aj;-><init>()V

    .line 114
    const-string v8, "ca"

    .line 116
    invoke-virtual {v7, v8, v6}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v9, "delete obsolete events total number "

    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v6

    .line 136
    invoke-static {v2, v6}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 142
    move-result v0

    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v8, 0x0

    .line 145
    :goto_90
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 148
    move-result v9
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_94} :catch_11a
    .catchall {:try_start_66 .. :try_end_94} :catchall_117

    .line 149
    const-string v10, "c_"

    .line 151
    if-eqz v9, :cond_ef

    .line 153
    :try_start_98
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 156
    move-result-wide v11

    .line 157
    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 160
    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    .line 163
    move-result v9

    .line 164
    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    .line 167
    move-result v11

    .line 168
    add-int/2addr v11, v3

    .line 169
    const/4 v12, 0x5

    .line 170
    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    .line 173
    move-result v12

    .line 174
    const-string v14, "%4d%02d%02d"

    .line 176
    const/4 v3, 0x3

    .line 177
    new-array v3, v3, [Ljava/lang/Object;

    .line 179
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v9

    .line 183
    const/16 v16, 0x0

    .line 185
    aput-object v9, v3, v16

    .line 187
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v9

    .line 191
    const/4 v11, 0x1

    .line 192
    aput-object v9, v3, v11

    .line 194
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v9

    .line 198
    const/4 v12, 0x2

    .line 199
    aput-object v9, v3, v12

    .line 201
    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 208
    move-result v9

    .line 209
    if-nez v9, :cond_e9

    .line 211
    if-eqz v6, :cond_e6

    .line 213
    new-instance v9, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v7, v6, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 231
    :cond_e6
    move-object v6, v3

    .line 232
    move v8, v11

    .line 233
    goto :goto_ec

    .line 234
    :cond_e9
    add-int/lit8 v10, v8, 0x1

    .line 236
    move v8, v10

    .line 237
    :goto_ec
    move v3, v11

    .line 238
    move v14, v12

    .line 239
    goto :goto_90

    .line 240
    :cond_ef
    if-eqz v6, :cond_103

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v7, v0, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 260
    :cond_103
    iget-object v0, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    .line 262
    invoke-static {v7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/aj;)Lcom/xiaomi/stat/a/l;

    .line 265
    move-result-object v3

    .line 266
    invoke-static {v0, v3}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    .line 269
    const-string v0, "events"

    .line 271
    move-object/from16 v3, v19

    .line 273
    invoke-virtual {v4, v0, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_113} :catch_11a
    .catchall {:try_start_98 .. :try_end_113} :catchall_117

    .line 276
    :cond_113
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 279
    goto :goto_13b

    .line 280
    :catchall_117
    move-exception v0

    .line 281
    move-object v3, v5

    .line 282
    goto :goto_13d

    .line 283
    :catch_11a
    move-exception v0

    .line 284
    move-object v3, v5

    .line 285
    goto :goto_122

    .line 286
    :catchall_11d
    move-exception v0

    .line 287
    const/4 v3, 0x0

    .line 288
    goto :goto_13d

    .line 289
    :catch_120
    move-exception v0

    .line 290
    const/4 v3, 0x0

    .line 291
    :goto_122
    :try_start_122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v5, "remove obsolete events failed with "

    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_122 .. :try_end_136} :catchall_13c

    .line 311
    if-eqz v3, :cond_13b

    .line 313
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_13b
    :goto_13b
    return-void

    .line 317
    :catchall_13c
    move-exception v0

    .line 318
    :goto_13d
    if-eqz v3, :cond_142

    .line 320
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_142
    throw v0
.end method
