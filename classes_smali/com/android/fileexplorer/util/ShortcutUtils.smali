.class public Lcom/android/fileexplorer/util/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.home.launcher.settings"

.field private static final DEFAULT_TOOL_FOLDER_TITLE:Ljava/lang/String; = "com.miui.home:string/default_folder_title_tools"

.field public static final EXTRA_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final EXTRA_SHORTCUT_FLAG:Ljava/lang/String; = "extra_shortcut_flag"

.field private static final METHOD_CALL_IS_IN_SYSTOOL_FOLDER:Ljava/lang/String; = "isInSysToolFolder"

.field private static final METHOD_RESULT_BOOLEAN:Ljava/lang/String; = "result_boolean"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "ShortcutUtils"

.field private static final VIDEO_ICON:Ljava/lang/String; = "com.android.fileexplorer:drawable/icon_video_shortcut"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPhoneAndDocShortcut(Landroid/content/Context;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_26

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Landroid/content/pm/ShortcutInfo;

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/util/ShortcutUtils;->obtainPhoneShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v2

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {p0}, Lcom/android/fileexplorer/util/ShortcutUtils;->obtainDocShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;

    .line 29
    move-result-object p0

    .line 30
    aput-object p0, v1, v2

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    .line 39
    :cond_26
    return-void
.end method

.method private static createShortcut(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "duplicate"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 16
    const-string v2, "com.android.fileexplorer:string/app_name"

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const v1, 0x7f0802a7

    .line 24
    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    new-instance v1, Landroid/content/Intent;

    .line 35
    const-string v2, "android.intent.action.MAIN"

    .line 37
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v2, "android.intent.category.LAUNCHER"

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v2, "shortcut"

    .line 47
    const-string v3, "1"

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-class v2, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 54
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 57
    const-string v2, "android.intent.extra.shortcut.INTENT"

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public static getShortcutCount()I
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "content://com.miui.home.launcher.settings/favorites"

    .line 15
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v3

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v2

    .line 32
    const-string v4, "_id"

    .line 34
    filled-new-array {v4}, [Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const-string v5, "iconPackage=? and (iconResource<>? or iconResource is NULL)"

    .line 40
    const/4 v6, 0x2

    .line 41
    new-array v6, v6, [Ljava/lang/String;

    .line 43
    const/4 v8, 0x0

    .line 44
    aput-object v0, v6, v8

    .line 46
    const/4 v0, 0x1

    .line 47
    const-string v7, "com.android.fileexplorer:drawable/icon_video_shortcut"

    .line 49
    aput-object v7, v6, v0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_41

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 61
    move-result v0
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_45

    .line 62
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    return v0

    .line 66
    :cond_41
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    return v8

    .line 70
    :catchall_45
    move-exception v0

    .line 71
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    throw v0
.end method

.method public static hasShortcutInLauncher()Z
    .registers 10

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "content://com.miui.home.launcher.settings/favorites"

    .line 15
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v3

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v2

    .line 32
    const-string v4, "_id"

    .line 34
    filled-new-array {v4}, [Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const-string v5, "iconPackage=? and (iconResource<>? or iconResource is NULL) and container<0"

    .line 40
    const/4 v6, 0x2

    .line 41
    new-array v6, v6, [Ljava/lang/String;

    .line 43
    const/4 v8, 0x0

    .line 44
    aput-object v0, v6, v8

    .line 46
    const-string v0, "com.android.fileexplorer:drawable/icon_video_shortcut"

    .line 48
    const/4 v9, 0x1

    .line 49
    aput-object v0, v6, v9

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_40

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 61
    move-result v0
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_44

    .line 62
    if-lez v0, :cond_40

    .line 64
    move v8, v9

    .line 65
    :cond_40
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    return v8

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v0
.end method

.method private static isCallMethodSupport()Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    new-instance v2, Landroid/content/ComponentName;

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 12
    move-result-object v3

    .line 13
    const-class v4, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 15
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "componentName"

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object v2

    .line 35
    const-string v3, "content://com.miui.home.launcher.settings"

    .line 37
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object v3

    .line 41
    const-string v4, "isInSysToolFolder"

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3a

    .line 50
    const-string v2, "result_boolean"

    .line 52
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 55
    move-result v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_3b

    .line 56
    if-eqz v1, :cond_3a

    .line 58
    const/4 v0, 0x1

    .line 59
    :cond_3a
    return v0

    .line 60
    :catch_3b
    move-exception v1

    .line 61
    const-string v2, "isCallMethodSupport error: "

    .line 63
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    const-string v2, "ShortcutUtils"

    .line 80
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v0
.end method

.method public static isInFolder()Z
    .registers 10

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "content://com.miui.home.launcher.settings/favorites"

    .line 15
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    move-result-object v3

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_13
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v2

    .line 32
    const-string v4, "_id"

    .line 34
    filled-new-array {v4}, [Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const-string v5, "iconPackage=? and container>0 and (iconResource<>? or iconResource is NULL)"

    .line 40
    const/4 v6, 0x2

    .line 41
    new-array v6, v6, [Ljava/lang/String;

    .line 43
    const/4 v8, 0x0

    .line 44
    aput-object v0, v6, v8

    .line 46
    const-string v0, "com.android.fileexplorer:drawable/icon_video_shortcut"

    .line 48
    const/4 v9, 0x1

    .line 49
    aput-object v0, v6, v9

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_40

    .line 58
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 61
    move-result v0
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_44

    .line 62
    if-lez v0, :cond_40

    .line 64
    move v8, v9

    .line 65
    :cond_40
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    return v8

    .line 69
    :catchall_44
    move-exception v0

    .line 70
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw v0
.end method

.method public static isInRecommendFolder()Z
    .registers 12

    .line 1
    const-string v0, "_id"

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "content://com.miui.home.launcher.settings/favorites"

    .line 17
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v2

    .line 21
    const/4 v9, 0x0

    .line 22
    :try_start_15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v3

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    const-string v6, "title=?"

    .line 40
    const-string v4, "com.miui.home:string/default_folder_title_tools"

    .line 42
    filled-new-array {v4}, [Ljava/lang/String;

    .line 45
    move-result-object v7

    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v4, v2

    .line 48
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    move-result-object v9

    .line 52
    const/4 v10, 0x0

    .line 53
    if-eqz v9, :cond_83

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_83

    .line 61
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_83

    .line 67
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    move-result v3

    .line 71
    int-to-long v3, v3

    .line 72
    const-wide/16 v5, -0x1

    .line 74
    cmp-long v5, v3, v5

    .line 76
    if-eqz v5, :cond_83

    .line 78
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    move-result-object v5

    .line 93
    filled-new-array {v0}, [Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    const-string v6, "iconPackage=? and container=?"

    .line 99
    const/4 v7, 0x2

    .line 100
    new-array v7, v7, [Ljava/lang/String;

    .line 102
    aput-object v1, v7, v10

    .line 104
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const/4 v11, 0x1

    .line 109
    aput-object v1, v7, v11

    .line 111
    const/4 v8, 0x0

    .line 112
    move-object v3, v5

    .line 113
    move-object v4, v2

    .line 114
    move-object v5, v0

    .line 115
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 118
    move-result-object v9

    .line 119
    if-eqz v9, :cond_7f

    .line 121
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 124
    move-result v0
    :try_end_7c
    .catchall {:try_start_15 .. :try_end_7c} :catchall_87

    .line 125
    if-lez v0, :cond_7f

    .line 127
    move v10, v11

    .line 128
    :cond_7f
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    return v10

    .line 132
    :cond_83
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    return v10

    .line 136
    :catchall_87
    move-exception v0

    .line 137
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    throw v0
.end method

.method public static moveToDesktop(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ShortcutUtils;->isCallMethodSupport()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_21

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "com.miui.home.ACTION_MOVE_TO_DESKTOP"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v1, Landroid/content/ComponentName;

    .line 16
    const-class v2, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 18
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "componentName"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-static {p0}, Lcom/android/fileexplorer/util/ShortcutUtils;->createShortcut(Landroid/content/Context;)V

    .line 37
    :goto_24
    return-void
.end method

.method public static obtainDocShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.shortcut.START_DOC"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x4000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    const-string v1, "extra_shortcut_flag"

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    const v1, 0x7f1103f6

    .line 27
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    .line 33
    const-string v3, "doc"

    .line 35
    invoke-direct {v2, p0, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 49
    move-result-object v1

    .line 50
    const v2, 0x7f080293

    .line 53
    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method

.method public static obtainPhoneShortcut(Landroid/content/Context;)Landroid/content/pm/ShortcutInfo;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.shortcut.START_PHONE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const/high16 v1, 0x4000000

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    const-class v1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    const-string v1, "extra_shortcut_flag"

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_21

    .line 30
    const v1, 0x7f110339

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    const v1, 0x7f1103f7

    .line 37
    :goto_24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    .line 43
    const-string v3, "phone"

    .line 45
    invoke-direct {v2, p0, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 59
    move-result-object v1

    .line 60
    const v2, 0x7f080294

    .line 63
    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
