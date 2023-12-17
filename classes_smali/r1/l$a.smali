.class public final Lr1/l$a;
.super Ls1/m;
.source "UploadTaskStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr1/l;


# direct methods
.method public constructor <init>(Lr1/l;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lr1/l$a;->a:Lr1/l;

    .line 3
    invoke-direct {p0, p2}, Ls1/m;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    if-eqz p1, :cond_ca

    .line 7
    const-string v4, "upload_chunks"

    .line 9
    if-eq p1, v2, :cond_ac

    .line 11
    if-eq p1, v0, :cond_4e

    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_11

    .line 16
    goto/16 :goto_e1

    .line 18
    :cond_11
    aget-object p1, p2, v3

    .line 20
    check-cast p1, Ljava/lang/Number;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result p1

    .line 26
    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    .line 28
    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    .line 30
    sget v0, Ls1/i;->a:I

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v5

    .line 36
    const-wide/32 v7, 0x516bc00

    .line 39
    sub-long/2addr v5, v7

    .line 40
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Lr1/l$b;->b:Ljava/lang/String;

    .line 46
    new-array v2, v2, [Ljava/lang/String;

    .line 48
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    aput-object v5, v2, v3

    .line 54
    invoke-virtual {p2, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    :try_start_38
    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    .line 59
    iget-object v0, p2, Lr1/l;->b:Lr1/l$b;

    .line 61
    iget-object p2, p2, Lr1/l;->c:Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    .line 63
    invoke-virtual {v0, p1, p2}, Lr1/l$b;->a(ILcom/xiaomi/opensdk/file/sdk/FileDataFactory;)Lr1/e;

    .line 66
    move-result-object v1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_44

    .line 67
    goto/16 :goto_e1

    .line 69
    :catchall_44
    move-exception p1

    .line 70
    const-string p2, "UploadTaskStore"

    .line 72
    const-string v0, "Meet exception when parser kss from db"

    .line 74
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    goto/16 :goto_e1

    .line 79
    :cond_4e
    aget-object p1, p2, v3

    .line 81
    check-cast p1, Ljava/lang/Number;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 86
    move-result p1

    .line 87
    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    .line 89
    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    .line 91
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    move-result-object v4

    .line 95
    sget-object v6, Lr1/l$b;->d:[Ljava/lang/String;

    .line 97
    sget-object v7, Lr1/l$b;->c:Ljava/lang/String;

    .line 99
    new-array v8, v2, [Ljava/lang/String;

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    aput-object p1, v8, v3

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v11, 0x0

    .line 110
    const-string v5, "upload_chunks"

    .line 112
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 115
    move-result-object p1

    .line 116
    :try_start_73
    new-instance v1, Lr1/i;

    .line 118
    invoke-direct {v1}, Lr1/i;-><init>()V

    .line 121
    if-eqz p1, :cond_9f

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_9f

    .line 129
    const-string p2, "chunk_pos"

    .line 131
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 134
    move-result p2

    .line 135
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    .line 138
    move-result p2

    .line 139
    int-to-long v2, p2

    .line 140
    const-string p2, "upload_id"

    .line 142
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    move-result p2

    .line 146
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_9f

    .line 156
    iput-wide v2, v1, Lr1/i;->a:J

    .line 158
    iput-object p2, v1, Lr1/i;->b:Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_73 .. :try_end_9f} :catchall_a5

    .line 160
    :cond_9f
    if-eqz p1, :cond_e1

    .line 162
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 165
    goto :goto_e1

    .line 166
    :catchall_a5
    move-exception p2

    .line 167
    if-eqz p1, :cond_ab

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_ab
    throw p2

    .line 173
    :cond_ac
    aget-object p1, p2, v3

    .line 175
    check-cast p1, Ljava/lang/Number;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 180
    move-result p1

    .line 181
    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    .line 183
    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    .line 185
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    move-result-object p2

    .line 189
    sget-object v0, Lr1/l$b;->c:Ljava/lang/String;

    .line 191
    new-array v2, v2, [Ljava/lang/String;

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    aput-object p1, v2, v3

    .line 199
    invoke-virtual {p2, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    goto :goto_e1

    .line 203
    :cond_ca
    aget-object p1, p2, v3

    .line 205
    check-cast p1, Ljava/lang/Number;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 210
    move-result p1

    .line 211
    aget-object v2, p2, v2

    .line 213
    check-cast v2, Lr1/e;

    .line 215
    aget-object p2, p2, v0

    .line 217
    check-cast p2, Lr1/i;

    .line 219
    iget-object v0, p0, Lr1/l$a;->a:Lr1/l;

    .line 221
    iget-object v0, v0, Lr1/l;->b:Lr1/l$b;

    .line 223
    invoke-virtual {v0, p1, v2, p2}, Lr1/l$b;->e(ILr1/e;Lr1/i;)V

    .line 226
    :cond_e1
    :goto_e1
    return-object v1
.end method
