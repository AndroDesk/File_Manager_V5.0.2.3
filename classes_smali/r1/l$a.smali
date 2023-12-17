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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr1/l;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lr1/l$a;->a:Lr1/l;

    invoke-direct {p0, p2}, Ls1/m;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_ca

    const-string v4, "upload_chunks"

    if-eq p1, v2, :cond_ac

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    goto/16 :goto_e1

    :cond_11
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    sget v0, Ls1/i;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x516bc00

    sub-long/2addr v5, v7

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    sget-object v0, Lr1/l$b;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p2, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :try_start_38
    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    iget-object v0, p2, Lr1/l;->b:Lr1/l$b;

    iget-object p2, p2, Lr1/l;->c:Lcom/xiaomi/opensdk/file/sdk/FileDataFactory;

    invoke-virtual {v0, p1, p2}, Lr1/l$b;->a(ILcom/xiaomi/opensdk/file/sdk/FileDataFactory;)Lr1/e;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_44

    goto/16 :goto_e1

    :catchall_44
    move-exception p1

    const-string p2, "UploadTaskStore"

    const-string v0, "Meet exception when parser kss from db"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e1

    :cond_4e
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Lr1/l$b;->d:[Ljava/lang/String;

    sget-object v7, Lr1/l$b;->c:Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "upload_chunks"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_73
    new-instance v1, Lr1/i;

    invoke-direct {v1}, Lr1/i;-><init>()V

    if-eqz p1, :cond_9f

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_9f

    const-string p2, "chunk_pos"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long v2, p2

    const-string p2, "upload_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9f

    iput-wide v2, v1, Lr1/i;->a:J

    iput-object p2, v1, Lr1/i;->b:Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_73 .. :try_end_9f} :catchall_a5

    :cond_9f
    if-eqz p1, :cond_e1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_e1

    :catchall_a5
    move-exception p2

    if-eqz p1, :cond_ab

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_ab
    throw p2

    :cond_ac
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lr1/l$a;->a:Lr1/l;

    iget-object p2, p2, Lr1/l;->b:Lr1/l$b;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    sget-object v0, Lr1/l$b;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p2, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e1

    :cond_ca
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aget-object v2, p2, v2

    check-cast v2, Lr1/e;

    aget-object p2, p2, v0

    check-cast p2, Lr1/i;

    iget-object v0, p0, Lr1/l$a;->a:Lr1/l;

    iget-object v0, v0, Lr1/l;->b:Lr1/l$b;

    invoke-virtual {v0, p1, v2, p2}, Lr1/l$b;->e(ILr1/e;Lr1/i;)V

    :cond_e1
    :goto_e1
    return-object v1
.end method
