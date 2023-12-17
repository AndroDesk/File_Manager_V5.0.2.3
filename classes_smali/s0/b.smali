.class public final Ls0/b;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(Landroid/database/Cursor;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x0

    const/4 v1, 0x1

    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_32
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    :try_start_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-nez p2, :cond_27

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_2b
    .catchall {:try_start_13 .. :try_end_23} :catchall_4e

    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    return-object p0

    :cond_27
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    return-object p0

    :catch_2b
    move-exception p2

    goto :goto_34

    :catchall_2d
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_4f

    :catch_32
    move-exception p2

    move-object p1, p0

    :goto_34
    :try_start_34
    const-string v0, "DocumentFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_4e

    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    return-object p0

    :catchall_4e
    move-exception p0

    :goto_4f
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    throw p0
.end method
