.class public Lcom/android/fileexplorer/mtp/DocumentInfo;
.super Ljava/lang/Object;
.source "DocumentInfo.java"


# static fields
.field private static final FLAG_ARCHIVE:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x9ad96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->FLAG_ARCHIVE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "permission_denial"

    iput-object v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/mtp/DocumentInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;-><init>()V

    iput-object p1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    const-string v1, "document_id"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    const-string v1, "mime_type"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    const-string v1, "_display_name"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    const-string v1, "last_modified"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->lastModified:J

    const-string v1, "flags"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    const-string v1, "summary"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->summary:Ljava/lang/String;

    const-string v1, "_size"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    const-string v1, "icon"

    invoke-static {p0, v1}, Lcom/android/fileexplorer/mtp/CursorHelper;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->icon:I

    iget-object p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;
    .registers 11

    sget-object v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating document from uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_17
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_53
    .catchall {:try_start_17 .. :try_end_1f} :catchall_50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    :try_start_25
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_29} :catch_4d
    .catchall {:try_start_25 .. :try_end_29} :catchall_4b

    if-eqz v2, :cond_42

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    move-result-object p1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_39} :catch_40
    .catchall {:try_start_2b .. :try_end_39} :catchall_62

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-object p1

    :catch_40
    move-exception p1

    goto :goto_56

    :cond_42
    :try_start_42
    const-string p1, "File not found"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_47} :catch_40
    .catchall {:try_start_42 .. :try_end_47} :catchall_62

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5e

    :catchall_4b
    move-exception p1

    goto :goto_64

    :catch_4d
    move-exception p1

    move-object v2, v1

    goto :goto_56

    :catchall_50
    move-exception p1

    move-object p0, v1

    goto :goto_64

    :catch_53
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    :goto_56
    :try_start_56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_62

    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p0, :cond_61

    :goto_5e
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_61
    return-object v1

    :catchall_62
    move-exception p1

    move-object v1, v2

    :goto_64
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6c
    throw p1
.end method

.method private isArchive()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public isDeleteSupported()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isDirectory()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isThumbnailSupported()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isWriteSupported()Z
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "authority:"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " documentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastModified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->lastModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " summary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " icon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " derivedUri："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
