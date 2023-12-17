.class public final Ls0/c;
.super Ls0/a;
.source "TreeDocumentFile.java"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ls0/a;-><init>(Ls0/a;)V

    .line 4
    iput-object p2, p0, Ls0/c;->b:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 8
    return-void
.end method

.method public static c(Landroid/database/Cursor;)V
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


# virtual methods
.method public final b()[Ls0/a;
    .registers 10

    .line 1
    iget-object v0, p0, Ls0/c;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 9
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object v2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    :try_start_17
    const-string v3, "document_id"

    .line 26
    filled-new-array {v3}, [Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    move-result-object v8

    .line 37
    :goto_24
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_51

    .line 43
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 49
    invoke-static {v2, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_37} :catch_3a
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    .line 56
    goto :goto_24

    .line 57
    :catchall_38
    move-exception v0

    .line 58
    goto :goto_75

    .line 59
    :catch_3a
    move-exception v1

    .line 60
    :try_start_3b
    const-string v2, "DocumentFile"

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v4, "Failed query: "

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 82
    :cond_51
    invoke-static {v8}, Ls0/c;->c(Landroid/database/Cursor;)V

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    move-result v1

    .line 89
    new-array v1, v1, [Landroid/net/Uri;

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, [Landroid/net/Uri;

    .line 97
    array-length v1, v0

    .line 98
    new-array v1, v1, [Ls0/a;

    .line 100
    :goto_63
    array-length v2, v0

    .line 101
    if-ge v7, v2, :cond_74

    .line 103
    new-instance v2, Ls0/c;

    .line 105
    iget-object v3, p0, Ls0/c;->b:Landroid/content/Context;

    .line 107
    aget-object v4, v0, v7

    .line 109
    invoke-direct {v2, p0, v3, v4}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 112
    aput-object v2, v1, v7

    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 116
    goto :goto_63

    .line 117
    :cond_74
    return-object v1

    .line 118
    :goto_75
    invoke-static {v8}, Ls0/c;->c(Landroid/database/Cursor;)V

    .line 121
    throw v0
.end method
