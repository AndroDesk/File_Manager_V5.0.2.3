.class public final Ls0/b;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# direct methods
.method public static a(Landroid/database/Cursor;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_8

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 6
    goto :goto_8

    .line 7
    :catch_6
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object v0

    .line 5
    const/4 p0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_6
    new-array v2, v1, [Ljava/lang/String;

    .line 9
    const/4 v6, 0x0

    .line 10
    aput-object p2, v2, v6

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v1, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_32
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    .line 20
    :try_start_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_27

    .line 26
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_27

    .line 32
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_2b
    .catchall {:try_start_13 .. :try_end_23} :catchall_4e

    .line 36
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 39
    return-object p0

    .line 40
    :cond_27
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 43
    return-object p0

    .line 44
    :catch_2b
    move-exception p2

    .line 45
    goto :goto_34

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    move-object v7, p1

    .line 48
    move-object p1, p0

    .line 49
    move-object p0, v7

    .line 50
    goto :goto_4f

    .line 51
    :catch_32
    move-exception p2

    .line 52
    move-object p1, p0

    .line 53
    :goto_34
    :try_start_34
    const-string v0, "DocumentFile"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v2, "Failed query: "

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_4e

    .line 75
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 78
    return-object p0

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    :goto_4f
    invoke-static {p1}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 83
    throw p0
.end method
