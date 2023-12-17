.class Lcom/xiaomi/stat/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    move-object/from16 v1, p0

    const-string v0, "ts"

    const-string v2, "EventManager"

    :try_start_6
    iget-object v4, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v4}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x6

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v15, "ts < ? and e != ?"

    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v14

    const-string v5, "mistat_delete_event"

    const/4 v10, 0x1

    aput-object v5, v11, v10

    const-string v6, "events"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "ts ASC"

    move-object v5, v4

    move-object v8, v15

    move-object v9, v11

    move v3, v10

    move-object/from16 v10, v16

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move v14, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_66} :catch_120
    .catchall {:try_start_6 .. :try_end_66} :catchall_11d

    :try_start_66
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_113

    new-instance v7, Lcom/xiaomi/stat/aj;

    invoke-direct {v7}, Lcom/xiaomi/stat/aj;-><init>()V

    const-string v8, "ca"

    invoke-virtual {v7, v8, v6}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete obsolete events total number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_90
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_94} :catch_11a
    .catchall {:try_start_66 .. :try_end_94} :catchall_117

    const-string v10, "c_"

    if-eqz v9, :cond_ef

    :try_start_98
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v3

    const/4 v12, 0x5

    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const-string v14, "%4d%02d%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v3, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v3, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v3, v12

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e9

    if-eqz v6, :cond_e6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    :cond_e6
    move-object v6, v3

    move v8, v11

    goto :goto_ec

    :cond_e9
    add-int/lit8 v10, v8, 0x1

    move v8, v10

    :goto_ec
    move v3, v11

    move v14, v12

    goto :goto_90

    :cond_ef
    if-eqz v6, :cond_103

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    :cond_103
    iget-object v0, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/aj;)Lcom/xiaomi/stat/a/l;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    const-string v0, "events"

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_113} :catch_11a
    .catchall {:try_start_98 .. :try_end_113} :catchall_117

    :cond_113
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_13b

    :catchall_117
    move-exception v0

    move-object v3, v5

    goto :goto_13d

    :catch_11a
    move-exception v0

    move-object v3, v5

    goto :goto_122

    :catchall_11d
    move-exception v0

    const/4 v3, 0x0

    goto :goto_13d

    :catch_120
    move-exception v0

    const/4 v3, 0x0

    :goto_122
    :try_start_122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove obsolete events failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catchall {:try_start_122 .. :try_end_136} :catchall_13c

    if-eqz v3, :cond_13b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_13b
    :goto_13b
    return-void

    :catchall_13c
    move-exception v0

    :goto_13d
    if-eqz v3, :cond_142

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_142
    throw v0
.end method
