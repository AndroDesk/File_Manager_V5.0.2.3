.class Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;
.super Landroid/database/ContentObserver;
.source "RecentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->watchMediaStore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;Landroid/os/Handler;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager$2;->this$0:Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;->access$400(Lcom/android/fileexplorer/service/RecentManagerService$RecentManager;)Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 14
    const-string p1, "_data"

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_41

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3e

    .line 36
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    move-result v1

    .line 40
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1d

    .line 50
    new-instance v2, Ljava/io/File;

    .line 52
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->updateFileItemFileInfo(Ljava/io/File;)I

    .line 62
    goto :goto_1d

    .line 63
    :cond_3e
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    :cond_41
    invoke-static {}, Lcom/android/fileexplorer/service/RecentManagerService;->access$000()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "on media content changed:"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getInstance()Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 93
    move-result-object p1

    .line 94
    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesListAsync(Z)V

    .line 98
    return-void
.end method
