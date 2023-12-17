.class Lcom/xiaomi/onetrack/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/a/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/a/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_8
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 11
    invoke-static {v2}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/a/a;)Lcom/xiaomi/onetrack/a/a$a;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 22
    move-result-object v3

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v4

    .line 27
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    const/4 v4, 0x6

    .line 31
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    .line 34
    move-result v5

    .line 35
    add-int/lit8 v5, v5, -0x7

    .line 37
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 40
    const/16 v4, 0xb

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 v4, 0xc

    .line 48
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v4, 0xd

    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 59
    move-result-wide v3

    .line 60
    const-string v11, "timestamp < ? "

    .line 62
    const/4 v6, 0x1

    .line 63
    new-array v12, v6, [Ljava/lang/String;

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    aput-object v3, v12, v5

    .line 71
    const-string v4, "monitor"

    .line 73
    const-string v3, "timestamp"

    .line 75
    filled-new-array {v3}, [Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    const/4 v8, 0x0

    .line 80
    const/4 v9, 0x0

    .line 81
    const-string v10, "timestamp ASC"

    .line 83
    move-object v3, v2

    .line 84
    move-object v6, v11

    .line 85
    move-object v7, v12

    .line 86
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_7b

    .line 96
    const-string v3, "monitor"

    .line 98
    invoke-virtual {v2, v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    move-result v2

    .line 102
    const-string v3, "AdMonitorManager"

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v5, "*** deleted obsolete ad monitor count="

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_7b
    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 126
    if-eqz v2, :cond_9b

    .line 128
    const-string v2, "AdMonitorManager"

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v4, "after delete obsolete ad monitor record remains="

    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v4, p0, Lcom/xiaomi/onetrack/a/c;->a:Lcom/xiaomi/onetrack/a/a;

    .line 142
    invoke-virtual {v4}, Lcom/xiaomi/onetrack/a/a;->e()J

    .line 145
    move-result-wide v4

    .line 146
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9b} :catch_a1
    .catchall {:try_start_8 .. :try_end_9b} :catchall_9f

    .line 156
    :cond_9b
    :goto_9b
    :try_start_9b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_c3

    .line 159
    goto :goto_bb

    .line 160
    :catchall_9f
    move-exception v2

    .line 161
    goto :goto_bd

    .line 162
    :catch_a1
    move-exception v2

    .line 163
    :try_start_a2
    const-string v3, "AdMonitorManager"

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const-string v5, "remove obsolete ad monitor failed with "

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a2 .. :try_end_b8} :catchall_9f

    .line 185
    if-eqz v1, :cond_bb

    .line 187
    goto :goto_9b

    .line 188
    :cond_bb
    :goto_bb
    :try_start_bb
    monitor-exit v0

    .line 189
    return-void

    .line 190
    :goto_bd
    if-eqz v1, :cond_c2

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_c2
    throw v2

    .line 196
    :catchall_c3
    move-exception v1

    .line 197
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_c3

    .line 198
    throw v1
.end method
