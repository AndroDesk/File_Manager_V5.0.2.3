.class public Lcom/android/fileexplorer/util/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isDownloading(Landroid/content/Context;)Z
    .registers 3

    .line 1
    const-string v0, "download"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/DownloadManager;

    .line 9
    new-instance v0, Landroid/app/DownloadManager$Query;

    .line 11
    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_26

    .line 28
    const-string v0, "uri"

    .line 30
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    move-result v0

    .line 34
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 42
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static isSupportDownloadPage(Landroid/content/Context;)Z
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.VIEW_DOWNLOADS_LIST"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "intent_extra_application_packagename"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_1c

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p0, 0x0

    .line 30
    :goto_1d
    return p0
.end method

.method public static startDownloadPage(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.VIEW_DOWNLOADS_LIST"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "intent_extra_application_packagename"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    instance-of v1, p0, Landroid/app/Activity;

    .line 19
    if-nez v1, :cond_19

    .line 21
    const/high16 v1, 0x10000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    :cond_19
    :try_start_19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 29
    goto :goto_21

    .line 30
    :catch_1d
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_21
    return-void
.end method
