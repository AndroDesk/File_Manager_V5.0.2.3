.class Lcom/xiaomi/onetrack/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/c/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_8
    iget-object v2, p0, Lcom/xiaomi/onetrack/c/g;->a:Lcom/xiaomi/onetrack/c/c;

    .line 11
    invoke-static {v2}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;)Lcom/xiaomi/onetrack/c/c$a;

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
    const/4 v11, 0x0

    .line 43
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 46
    const/16 v4, 0xc

    .line 48
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 51
    const/16 v4, 0xd

    .line 53
    invoke-virtual {v3, v4, v11}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 59
    move-result-wide v3

    .line 60
    const-string v12, "timestamp < ? "

    .line 62
    const/4 v13, 0x1

    .line 63
    new-array v14, v13, [Ljava/lang/String;

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    aput-object v3, v14, v11

    .line 71
    const-string v4, "events"

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
    move-object v6, v12

    .line 85
    move-object v7, v14

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
    const-string v3, "events"

    .line 98
    invoke-virtual {v2, v3, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    move-result v2

    .line 102
    const-string v3, "EventManager"

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v5, "*** deleted obsolete item count="

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
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/c/c;->c()J

    .line 131
    move-result-wide v2

    .line 132
    const-wide/16 v4, 0x0

    .line 134
    cmp-long v4, v2, v4

    .line 136
    if-nez v4, :cond_8a

    .line 138
    move v11, v13

    .line 139
    :cond_8a
    invoke-static {v11}, Lcom/xiaomi/onetrack/b/n;->a(Z)V

    .line 142
    const-string v4, "EventManager"

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v6, "after delete obsolete record remains="

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a3} :catch_a9
    .catchall {:try_start_8 .. :try_end_a3} :catchall_a7

    .line 164
    :goto_a3
    :try_start_a3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_cb

    .line 167
    goto :goto_c3

    .line 168
    :catchall_a7
    move-exception v2

    .line 169
    goto :goto_c5

    .line 170
    :catch_a9
    move-exception v2

    .line 171
    :try_start_aa
    const-string v3, "EventManager"

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v5, "remove obsolete events failed with "

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_a7

    .line 193
    if-eqz v1, :cond_c3

    .line 195
    goto :goto_a3

    .line 196
    :cond_c3
    :goto_c3
    :try_start_c3
    monitor-exit v0

    .line 197
    return-void

    .line 198
    :goto_c5
    if-eqz v1, :cond_ca

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_ca
    throw v2

    .line 204
    :catchall_cb
    move-exception v1

    .line 205
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_cb

    .line 206
    throw v1
.end method
