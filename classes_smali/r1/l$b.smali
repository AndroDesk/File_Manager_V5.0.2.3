.class public final Lr1/l$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UploadTaskStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static volatile a:Lr1/l$b;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "gen_time"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "%s<?"

    .line 9
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    sput-object v1, Lr1/l$b;->b:Ljava/lang/String;

    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v3, "task_hash"

    .line 21
    aput-object v3, v1, v2

    .line 23
    const-string v2, "%s=?"

    .line 25
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    sput-object v1, Lr1/l$b;->c:Ljava/lang/String;

    .line 31
    const-string v1, "chunk_pos"

    .line 33
    const-string v2, "upload_id"

    .line 35
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lr1/l$b;->d:[Ljava/lang/String;

    .line 41
    const-string v1, "kss_request"

    .line 43
    const-string v2, "kss_file_info"

    .line 45
    const-string v3, "kss_upload_id"

    .line 47
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lr1/l$b;->e:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-string v0, "ksssdk_infos.db"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILcom/xiaomi/opensdk/file/sdk/FileDataFactory;)Lr1/e;
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    move-result-object v0

    .line 5
    sget-object v2, Lr1/l$b;->e:[Ljava/lang/String;

    .line 7
    sget-object v3, Lr1/l$b;->c:Ljava/lang/String;

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v4, v1, [Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p1, v4, v1

    .line 19
    const-string v1, "upload_chunks"

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p1, :cond_75

    .line 31
    :try_start_1e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_75

    .line 37
    const-string v1, "kss_request"

    .line 39
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    move-result v1

    .line 43
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "kss_file_info"

    .line 49
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    move-result v2

    .line 53
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    const-string v3, "gen_time"

    .line 59
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    move-result v3

    .line 63
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 66
    move-result-wide v3

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_6d

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_4f

    .line 79
    goto :goto_6d

    .line 80
    :cond_4f
    invoke-virtual {p2, v1}, Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;->createUploadRequestResult(Ljava/lang/String;)Lp1/e;

    .line 83
    move-result-object p2

    .line 84
    new-instance v0, Lr1/k;

    .line 86
    invoke-direct {v0, v2}, Lr1/k;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lr1/e;

    .line 91
    invoke-direct {v1, v0, p2, v3, v4}, Lr1/e;-><init>(Lr1/k;Lp1/e;J)V

    .line 94
    const-string p2, "kss_upload_id"

    .line 96
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    move-result p2

    .line 100
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    iput-object p2, v1, Lr1/e;->e:Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_1e .. :try_end_69} :catchall_6b

    .line 106
    move-object v0, v1

    .line 107
    goto :goto_75

    .line 108
    :catchall_6b
    move-exception p2

    .line 109
    goto :goto_71

    .line 110
    :cond_6d
    :goto_6d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 113
    return-object v0

    .line 114
    :goto_71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 117
    throw p2

    .line 118
    :cond_75
    :goto_75
    if-eqz p1, :cond_7a

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_7a
    return-object v0
.end method

.method public final e(ILr1/e;Lr1/i;)V
    .registers 8

    .line 1
    if-nez p2, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    const-string v1, "task_hash"

    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget-object p1, p2, Lr1/e;->b:Lr1/k;

    .line 20
    invoke-virtual {p1}, Lr1/k;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v1, "kss_file_info"

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p2, Lr1/e;->c:Lp1/e;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "kss_request"

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p1, p2, Lr1/e;->e:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result p1

    .line 46
    const-string v1, ""

    .line 48
    const-string v2, "kss_upload_id"

    .line 50
    if-eqz p1, :cond_37

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    iget-object p1, p2, Lr1/e;->e:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_3c
    iget-wide v2, p3, Lr1/i;->a:J

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p1

    .line 67
    const-string v2, "chunk_pos"

    .line 69
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    iget-object p1, p3, Lr1/i;->b:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result p1

    .line 78
    const-string v2, "upload_id"

    .line 80
    if-eqz p1, :cond_55

    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    goto :goto_5a

    .line 86
    :cond_55
    iget-object p1, p3, Lr1/i;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_5a
    iget-wide p1, p2, Lr1/e;->d:J

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    move-result-object p1

    .line 97
    const-string p2, "gen_time"

    .line 99
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    move-result-object p1

    .line 106
    const/4 p2, 0x0

    .line 107
    const-string p3, "upload_chunks"

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 112
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "upload_chunks"

    .line 7
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT, task_hash INTEGER NOT NULL UNIQUE, kss_request STRING NOT NULL, kss_file_info STRING NOT NULL, kss_upload_id STRING NOT NULL, chunk_pos LONG NOT NULL DEFAULT 0, upload_id STRING NOT NULL, gen_time LONG NOT NULL DEFAULT 0"

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "CREATE TABLE IF NOT EXISTS %s (%s);"

    .line 16
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 1
    const/4 p3, 0x4

    .line 2
    if-eq p2, p3, :cond_12

    .line 4
    const-string p2, "DBHelper"

    .line 6
    const-string p3, "Destroying all old data."

    .line 8
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    const-string p2, "DROP TABLE IF EXISTS upload_chunks"

    .line 13
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lr1/l$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    :cond_12
    return-void
.end method
