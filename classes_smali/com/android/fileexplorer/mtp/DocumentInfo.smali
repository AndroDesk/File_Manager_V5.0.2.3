.class public Lcom/android/fileexplorer/mtp/DocumentInfo;
.super Ljava/lang/Object;
.source "DocumentInfo.java"


# static fields
.field private static final FLAG_ARCHIVE:I = 0x8000

.field public static final PERMISSION_DENIAL:Ljava/lang/String; = "permission_denial"

.field private static final TAG:Ljava/lang/String; = "DocumentInfo"


# instance fields
.field public authority:Ljava/lang/String;

.field public derivedUri:Landroid/net/Uri;

.field public displayName:Ljava/lang/String;

.field public documentId:Ljava/lang/String;

.field private flags:I

.field private icon:I

.field public lastModified:J

.field public mimeType:Ljava/lang/String;

.field public size:J

.field private summary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "permission_denial"

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;-><init>()V

    .line 6
    iput-object p1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 8
    const-string v1, "document_id"

    .line 10
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 16
    const-string v1, "mime_type"

    .line 18
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 24
    const-string v1, "_display_name"

    .line 26
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 32
    const-string v1, "last_modified"

    .line 34
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->lastModified:J

    .line 40
    const-string v1, "flags"

    .line 42
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 45
    move-result v1

    .line 46
    iput v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 48
    const-string v1, "summary"

    .line 50
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->summary:Ljava/lang/String;

    .line 56
    const-string v1, "_size"

    .line 58
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 61
    move-result-wide v1

    .line 62
    iput-wide v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    .line 64
    const-string v1, "icon"

    .line 66
    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 69
    move-result p0

    .line 70
    iput p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->icon:I

    .line 72
    iget-object p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 74
    invoke-static {p1, p0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    move-result-object p0

    .line 78
    iput-object p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 80
    return-object v0
.end method

.method public static createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 11

    .line 1
    sget-object v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "creating document from uri:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x0

    .line 24
    :try_start_17
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {p0, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 31
    move-result-object p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_53
    .catchall {:try_start_17 .. :try_end_1f} :catchall_50

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v3, p0

    .line 37
    move-object v4, p1

    .line 38
    :try_start_25
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    move-result-object v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_4d
    .catchall {:try_start_25 .. :try_end_29} :catchall_4b

    .line 42
    if-eqz v2, :cond_42

    .line 44
    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_42

    .line 50
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 57
    move-result-object p1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_40
    .catchall {:try_start_2b .. :try_end_39} :catchall_62

    .line 58
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 64
    return-object p1

    .line 65
    :catch_40
    move-exception p1

    .line 66
    goto :goto_56

    .line 67
    :cond_42
    :try_start_42
    const-string p1, "File not found"

    .line 69
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_40
    .catchall {:try_start_42 .. :try_end_47} :catchall_62

    .line 72
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    goto :goto_5e

    .line 76
    :catchall_4b
    move-exception p1

    .line 77
    goto :goto_64

    .line 78
    :catch_4d
    move-exception p1

    .line 79
    move-object v2, v1

    .line 80
    goto :goto_56

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    move-object p0, v1

    .line 83
    goto :goto_64

    .line 84
    :catch_53
    move-exception p1

    .line 85
    move-object p0, v1

    .line 86
    move-object v2, p0

    .line 87
    :goto_56
    :try_start_56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_62

    .line 90
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    if-eqz p0, :cond_61

    .line 95
    :goto_5e
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 98
    :cond_61
    return-object v1

    .line 99
    :catchall_62
    move-exception p1

    .line 100
    move-object v1, v2

    .line 101
    :goto_64
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    if-eqz p0, :cond_6c

    .line 106
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 109
    :cond_6c
    throw p1
.end method

.method private isArchive()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 3
    const v1, 0x8000

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method


# virtual methods
.method public isDeleteSupported()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 3
    const-string v1, "vnd.android.document/directory"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isThumbnailSupported()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_7

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :goto_8
    return v1
.end method

.method public isWriteSupported()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "authority:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " documentId:"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " mimeType:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " displayName:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, " lastModified:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->lastModified:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " flags:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, " summary:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->summary:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " size:"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-wide v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " icon:"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->icon:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, " derivedUri："

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
