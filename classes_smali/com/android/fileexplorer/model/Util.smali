.class public Lcom/android/fileexplorer/model/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;,
        Lcom/android/fileexplorer/model/Util$Pos;,
        Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;,
        Lcom/android/fileexplorer/model/Util$StorageConstants;
    }
.end annotation


# static fields
.field public static final ACTION_CATEGORY_CHOICE:Ljava/lang/String; = "com.android.fileexplorer.export.CATEGORY_CHOICE"

.field public static final ACTION_FORCE_TOUCH_CLEAN:Ljava/lang/String; = "miui.intent.action.FORCE_TOUCH_CLEAN"

.field private static final ACTION_GARBAGE_CLEANUP:Ljava/lang/String; = "miui.intent.action.GARBAGE_CLEANUP"

.field public static final ACTION_OPEN_FILE:Ljava/lang/String; = "com.android.fileexplorer.export.START_OEPN_FILE"

.field public static final ACTION_PICK_FOLDER:Ljava/lang/String; = "miui.intent.action.PICK_FOLDER"

.field public static final ACTION_PICK_INSTALLED_APPS:Ljava/lang/String; = "miui.intent.action.PICK_INSTALLED_APPS"

.field public static final ACTION_PICK_MULTIPLE:Ljava/lang/String; = "miui.intent.action.PICK_MULTIPLE"

.field public static final ACTION_PICK_MULTIPLE_NO_FOLDER:Ljava/lang/String; = "miui.intent.action.PICK_MULTIPLE_NO_FOLDER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SEARCH_START_DOC:Ljava/lang/String; = "com.android.fileexplorer.search.DOC_PAGE"

.field public static final ACTION_START_DOC:Ljava/lang/String; = "com.android.fileexplorer.shortcut.START_DOC"

.field public static final ACTION_START_PHONE:Ljava/lang/String; = "com.android.fileexplorer.shortcut.START_PHONE"

.field public static final ACTION_VIEW_HOME:Ljava/lang/String; = "com.android.fileexplorer.export.VIEW_HOME"

.field public static final ACTION_VOLUME_STATE_CHANGED:Ljava/lang/String; = "android.os.storage.action.VOLUME_STATE_CHANGED"

.field private static final ANDROID_PACKAGE_EXTERNAL_CACHE_PATH:Ljava/lang/String; = "/Android/data"

.field private static final ANDROID_SECURE:Ljava/lang/String; = "/mnt/sdcard/.android_secure"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation
.end field

.field public static final APP_TAG_INDEX:I = 0x8

.field public static final CATEGORY_TAB_INDEX:I = 0x1

.field public static final CLOUD_TAB_INDEX:I = 0xd

.field public static final CURRENT_CLOUDINFO_ID:Ljava/lang/String; = "current_cloudinfo_id"

.field private static final ELLIPSIS_NORMAL:C = '…'

.field private static final ELLIPSIS_NORMAL_APECIAL:Ljava/lang/String; = "..."

.field private static final ELLIPSIS_STRING:Ljava/lang/String;

.field public static final ENTER_CLEAN_HINT:Ljava/lang/String; = "00019"

.field public static final ENTER_CLEAN_HOMEPAGE:Ljava/lang/String; = "00003"

.field private static final ENTER_CLEAN_OPERATION:Ljava/lang/String; = "00022"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "file_category"

.field public static final EXTRA_DIRECTORY:Ljava/lang/String; = "current_directory"

.field public static final EXTRA_DIRECTORY_FILE_COUNT:Ljava/lang/String; = "current_directory_count"

.field private static final EXTRA_ENTER_CLEAN_WAY:Ljava/lang/String; = "enter_homepage_way"

.field public static final EXTRA_FILE_AMOUNT:Ljava/lang/String; = "current_directory_file_amount"

.field public static final EXTRA_PATH_TYPE:Ljava/lang/String; = "explorer_path"

.field public static final EXTRA_STARTING_WINDOW_LABEL:Ljava/lang/String; = ":miui:starting_window_label"

.field public static final FAVORITE_TAB_INDEX:I = 0xb

.field public static final FILE_EXPLORER_PATH:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "Util"

.field private static final MAX_FILENAME_LENGTH:I = 0x3c

.field private static final MAX_LINE_COUNT:I = 0x2

.field public static final MINIMUM_VERSION:I = 0x1ea

.field public static final MI_ROUTER_TAB_INDEX:I = 0x6

.field public static final MTP_TAB_INDEX:I = 0xc

.field private static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final PACKAGE_NAME_THEME_MANAGER:Ljava/lang/String; = "com.android.thememanager"

.field public static final PACKAGE_NAME_VIDEO:Ljava/lang/String; = "com.miui.video"

.field public static final PRIVATE_FOLDER_INDEX:I = 0xa

.field public static final SDCARD_TAB_INDEX:I = 0x2

.field public static final SEARCH_TAG_INDEX:I = 0x9

.field private static SysFileDirs:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TENCENT_MIRROR_PERMISSION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USB_TAB_INDEX:I = 0x7

.field public static final VIDEO_MINIMUM_VERSION:I = 0x7858e936

.field private static sTextSeparator:Ljava/lang/String; = null

.field public static final sZipFileMimeType:Ljava/lang/String; = "application/zip"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "/FileExplorer"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/android/fileexplorer/model/Util;->FILE_EXPLORER_PATH:Ljava/lang/String;

    .line 24
    const/16 v0, 0x2026

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/fileexplorer/model/Util;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    sput-object v0, Lcom/android/fileexplorer/model/Util;->TENCENT_MIRROR_PERMISSION:Ljava/util/ArrayList;

    .line 40
    const-string v1, "com.tencent.mm"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "com.tencent.mobileqq"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "/miren_browser/imagecaches"

    .line 52
    const-string v1, "/FileExplorer/.safebox"

    .line 54
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/android/fileexplorer/model/Util;->SysFileDirs:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->lambda$fitEllipsize$0(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/TextView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->ellipsize(Landroid/widget/TextView;)V

    .line 4
    return-void
.end method

.method public static addNoMedia(Ljava/io/File;)Z
    .registers 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, ".nomedia"

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_1e

    .line 14
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 17
    move-result p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    .line 18
    return p0

    .line 19
    :catch_12
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "Util"

    .line 26
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1e
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public static canReadCompat(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :cond_10
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static canWriteCompat(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_17

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_10

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    :cond_10
    invoke-static {p1}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static cancelTask(Landroid/os/AsyncTask;)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_6
    return-void
.end method

.method public static cancelTask(Lcom/android/fileexplorer/controller/Task;)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/controller/Task;->cancel(Z)V

    :cond_6
    return-void
.end method

.method public static cancelTask(Ljava/lang/Runnable;)V
    .registers 2

    if-eqz p0, :cond_9

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public static checkPortNumPattern(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1e

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_e

    .line 14
    goto :goto_1e

    .line 15
    :cond_e
    :try_start_e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    .line 19
    goto :goto_14

    .line 20
    :catch_13
    move p0, v1

    .line 21
    :goto_14
    const/16 v0, 0x400

    .line 23
    if-lt p0, v0, :cond_1e

    .line 25
    const v0, 0xffff

    .line 28
    if-gt p0, v0, :cond_1e

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static clearClipboard()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 13
    if-eqz v0, :cond_2f

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    const/16 v2, 0x1c

    .line 19
    if-lt v1, v2, :cond_2f

    .line 21
    :try_start_14
    invoke-static {v0}, Landroidx/appcompat/widget/y;->p(Landroid/content/ClipboardManager;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    .line 24
    goto :goto_2f

    .line 25
    :catch_18
    move-exception v0

    .line 26
    const-string v1, "clearClipboard: "

    .line 28
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Util"

    .line 45
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V
    .registers 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "miui.intent.action.PICK_FOLDER"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "inner_call"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    const-string v1, "copyOrMove"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    if-eqz p6, :cond_26

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 29
    move-result-object p6

    .line 30
    invoke-virtual {p6}, Lcom/android/fileexplorer/model/PasteFileInstance;->getSourceFolder()Ljava/lang/String;

    .line 33
    move-result-object p6

    .line 34
    const-string v1, "current_directory"

    .line 36
    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const-string p6, "title"

    .line 45
    invoke-virtual {v0, p6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const-string p2, "pick_button_name"

    .line 54
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string p1, "pick_router"

    .line 59
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string p1, "pick_mi_drive"

    .line 64
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-string p1, "pick_mtp"

    .line 69
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const/16 p1, 0x71

    .line 74
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    return-void
.end method

.method public static copySideFile(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;)V
    .registers 5

    if-eqz p0, :cond_40

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_b

    goto :goto_40

    .line 4
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 7
    new-instance p0, Landroid/content/ClipDescription;

    const-string v2, "fileexplorer"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Util;->getMimeType(Landroid/content/ClipData$Item;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 8
    new-instance p1, Landroid/content/ClipData;

    invoke-direct {p1, p0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const p0, 0x7f11044d

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    const-string p0, "Util"

    const-string p1, "copySideFile: error"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    return-void
.end method

.method public static copySideFile(Ljava/util/List;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1d

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    if-nez v1, :cond_14

    goto :goto_1d

    .line 2
    :cond_14
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->copySideFile(Lcom/android/fileexplorer/model/FileInfo;Landroid/content/Context;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static createBitmapByView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static createClipData(Ljava/util/List;)Landroid/content/ClipData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5f

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_5f

    .line 11
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_5f

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    new-instance v2, Ljava/io/File;

    .line 29
    iget-object v3, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 31
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_28

    .line 40
    goto :goto_e

    .line 41
    :cond_28
    new-instance v2, Ljava/io/File;

    .line 43
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 45
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 51
    move-result-object v1

    .line 52
    if-nez v0, :cond_44

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object v0

    .line 62
    const-string v2, "FileExplorer"

    .line 64
    invoke-static {v0, v2, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 67
    move-result-object v0

    .line 68
    goto :goto_e

    .line 69
    :cond_44
    new-instance v2, Landroid/content/ClipData$Item;

    .line 71
    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    const/16 v3, 0x1a

    .line 78
    if-lt v1, v3, :cond_5b

    .line 80
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/x;->n(Landroid/content/ClipData;Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 91
    goto :goto_e

    .line 92
    :cond_5b
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 95
    goto :goto_e

    .line 96
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public static createClipDataWithLabel(Ljava/util/List;Ljava/lang/String;)Landroid/content/ClipData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_68

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_68

    .line 11
    :cond_a
    const-string v1, "createClipDataWithLabel datas size:"

    .line 13
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "Util"

    .line 30
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_68

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 49
    new-instance v2, Ljava/io/File;

    .line 51
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 53
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->grantPermissionToTencentPackage(Landroid/net/Uri;)V

    .line 63
    if-nez v0, :cond_4d

    .line 65
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0, p1, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 76
    move-result-object v0

    .line 77
    goto :goto_24

    .line 78
    :cond_4d
    new-instance v2, Landroid/content/ClipData$Item;

    .line 80
    invoke-direct {v2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    const/16 v3, 0x1a

    .line 87
    if-lt v1, v3, :cond_64

    .line 89
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/x;->n(Landroid/content/ClipData;Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 100
    goto :goto_24

    .line 101
    :cond_64
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 104
    goto :goto_24

    .line 105
    :cond_68
    :goto_68
    return-object v0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_22

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_22

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_f
    if-ge v3, v1, :cond_22

    .line 18
    aget-object v4, v0, v3

    .line 20
    new-instance v5, Ljava/io/File;

    .line 22
    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-static {v5}, Lcom/android/fileexplorer/model/Util;->deleteDir(Ljava/io/File;)Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1f

    .line 31
    return v2

    .line 32
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_f

    .line 35
    :cond_22
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static doAction(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_b

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    :cond_b
    return-void
.end method

.method public static doActionDelay(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x96

    .line 2
    invoke-static {p0, v0, v1}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static doActionDelay(Ljava/lang/Runnable;J)V
    .registers 4

    if-eqz p0, :cond_9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method

.method private static ellipsize(Landroid/widget/TextView;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-le v0, v1, :cond_e5

    .line 8
    :try_start_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result v2

    .line 25
    sub-int/2addr v1, v2

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v3, v0

    .line 39
    move v7, v1

    .line 40
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .line 43
    move-result v2

    .line 44
    int-to-float v3, v2

    .line 45
    div-float v3, v1, v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 56
    const-string v7, "."

    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 61
    move-result v6

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, -0x1

    .line 64
    if-eq v6, v8, :cond_4e

    .line 66
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result v7

    .line 70
    invoke-interface {v0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v0, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 77
    move-result-object v0

    .line 78
    goto :goto_56

    .line 79
    :cond_4e
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 82
    move-result v6

    .line 83
    invoke-interface {v0, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 86
    move-result-object v0

    .line 87
    :goto_56
    if-nez v7, :cond_5a

    .line 89
    const/4 v2, 0x0

    .line 90
    goto :goto_60

    .line 91
    :cond_5a
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    mul-float/2addr v2, v3

    .line 97
    :goto_60
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 100
    move-result-object v3

    .line 101
    sub-float/2addr v1, v2

    .line 102
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 104
    invoke-static {v0, v3, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    .line 107
    move-result-object v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6b} :catch_ce

    .line 108
    const-string v1, ""

    .line 110
    if-eqz v0, :cond_75

    .line 112
    :try_start_6f
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_86

    .line 118
    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v2, Lcom/android/fileexplorer/model/Util;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    :cond_86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    const-string v3, "\n"

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    if-nez v7, :cond_9d

    .line 157
    move-object v7, v1

    .line 158
    :cond_9d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    sget-object v1, Lcom/android/fileexplorer/model/Util;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 170
    move-result v1

    .line 171
    if-eq v1, v8, :cond_ca

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/16 v3, 0x2026

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    :cond_ca
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_cd} :catch_ce

    .line 206
    goto :goto_e5

    .line 207
    :catch_ce
    move-exception p0

    .line 208
    const-string v0, "fitEllipsize error: "

    .line 210
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    const-string v0, "Util"

    .line 227
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_e5
    :goto_e5
    return-void
.end method

.method public static enterClean(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_12

    .line 14
    const/high16 v1, 0x14000000

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    :cond_12
    const-string v1, "enter_homepage_way"

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-static {p0, v0}, Lcom/cleanmaster/sdk/CleanMasterIntentHelper;->startCleanMaster(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_25

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Util"

    .line 35
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_25
    return-void
.end method

.method public static enterStorage(Landroid/app/Activity;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.miui.cleanmaster.action.STORAGE_MANAGE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "key_channel"

    .line 10
    const-string v2, "miui_file_explore"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {p0}, Lcom/android/fileexplorer/util/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_19

    .line 21
    const/high16 v1, 0x14000000

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    :cond_19
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_26

    .line 32
    new-instance v0, Landroid/content/Intent;

    .line 34
    const-class v1, Lcom/android/fileexplorer/activity/StorageInfoActivity;

    .line 36
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    :cond_26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_29} :catch_2a

    .line 42
    goto :goto_34

    .line 43
    :catch_2a
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    const-string v0, "Util"

    .line 50
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_34
    return-void
.end method

.method public static existsCompat(Ljava/io/File;)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long p0, v0, v2

    .line 15
    if-eqz p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0

    .line 21
    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static fitEllipsize(Landroid/widget/TextView;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Util;->fitEllipsize(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    return-void
.end method

.method public static fitEllipsize(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p0, :cond_c

    .line 2
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    :cond_c
    new-instance v0, Lcom/android/fileexplorer/model/a;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/model/a;-><init>(Lcom/android/fileexplorer/dao/file/FileItem;)V

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->waitViewAttach(Landroid/view/View;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static formatDateString(J)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/DateUtils;->formatDateString(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static formatDirectoryFileCount(I)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p0, :cond_4

    .line 4
    move p0, v0

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0f0013

    .line 20
    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    aput-object p0, v2, v0

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static getApkIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 1
    const-string v0, "Util"

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    :try_start_f
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_28

    .line 22
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    if-eqz v2, :cond_28

    .line 26
    iput-object p0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_1f} :catch_20

    .line 32
    return-object p0

    .line 33
    :catch_20
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_28
    const-string p0, "getApkIcon null"

    .line 43
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private static getBackView(Lmiuix/appcompat/app/ActionBar;)Landroid/view/View;
    .registers 3

    .line 1
    if-eqz p0, :cond_12

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/a;->getCustomView()Landroid/view/View;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_12

    .line 9
    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    .line 11
    const v1, 0x7f0a0428

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public static getCallingPackageName(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "Util"

    .line 3
    const-string v1, ""

    .line 5
    if-eqz p0, :cond_5b

    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_d

    .line 13
    goto :goto_5b

    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    .line 17
    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    .line 18
    goto :goto_47

    .line 19
    :catch_12
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v4, "getCallingPackageName failed: "

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_47

    .line 50
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_47

    .line 64
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    :cond_47
    :goto_47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "getCallingPackageName callingPackageName: "

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5b
    :goto_5b
    return-object v1
.end method

.method public static getChineseCount(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v0, "[一-龥]"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 19
    :goto_12
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1b

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_12

    .line 28
    :cond_1b
    return v1
.end method

.method public static getDefaultFavorites()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FavoriteItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "DCIM/Camera"

    .line 12
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_24

    .line 22
    new-instance v2, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 24
    const v3, 0x7f110176

    .line 27
    invoke-static {v3}, La/a;->e(I)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, v3, v1}, Lcom/android/fileexplorer/model/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "MIUI/screen_cap"

    .line 43
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_43

    .line 53
    new-instance v2, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 55
    const v3, 0x7f110178

    .line 58
    invoke-static {v3}, La/a;->e(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v2, v3, v1}, Lcom/android/fileexplorer/model/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_43
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string v2, "MIUI/ringtone"

    .line 74
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_62

    .line 84
    new-instance v2, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 86
    const v3, 0x7f110177

    .line 89
    invoke-static {v3}, La/a;->e(I)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-direct {v2, v3, v1}, Lcom/android/fileexplorer/model/FavoriteItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_62
    return-object v0
.end method

.method public static getDestFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/io/File;
    .registers 12

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1b0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 14
    goto/16 :goto_1b0

    .line 16
    :cond_f
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1a

    .line 26
    return-object v1

    .line 27
    :cond_1a
    new-instance v2, Ljava/io/File;

    .line 29
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v3, " "

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz p2, :cond_4a

    .line 37
    :goto_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1a7

    .line 43
    invoke-static {p1, v3}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object p2

    .line 47
    add-int/lit8 p3, v4, 0x1

    .line 49
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 56
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_43

    .line 66
    goto/16 :goto_1a7

    .line 68
    :cond_43
    new-instance v2, Ljava/io/File;

    .line 70
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    move v4, p3

    .line 74
    goto :goto_24

    .line 75
    :cond_4a
    sget-boolean p2, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 77
    const-string v5, "."

    .line 79
    if-eqz p2, :cond_117

    .line 81
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getRealName2(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_62

    .line 91
    const-string p0, "Util"

    .line 93
    const-string p1, "path error"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v1

    .line 99
    :cond_62
    new-instance v0, Ljava/io/File;

    .line 101
    invoke-static {p2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/io/File;

    .line 114
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v6

    .line 118
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    :goto_78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_8c

    .line 127
    if-eqz p3, :cond_1a7

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_8c

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_1a7

    .line 141
    :cond_8c
    const-string v0, "FE_P_"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_d5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v1, v4, 0x1

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_ba

    .line 183
    invoke-static {v0, v5, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    :cond_ba
    new-instance v2, Ljava/io/File;

    .line 189
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-static {p0, v4}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v4

    .line 197
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/io/File;

    .line 202
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    move-object v0, v2

    .line 210
    move-object v7, v4

    .line 211
    move v4, v1

    .line 212
    move-object v1, v7

    .line 213
    goto :goto_78

    .line 214
    :cond_d5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v1, v4, 0x1

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 242
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_fb

    .line 248
    invoke-static {v0, v5, v2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    :cond_fb
    new-instance v2, Ljava/io/File;

    .line 254
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getEncryptedName2(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object v4

    .line 258
    invoke-static {p0, v4}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v4

    .line 262
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v4, Ljava/io/File;

    .line 267
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    move-object v0, v2

    .line 275
    move-object v2, v4

    .line 276
    move v4, v1

    .line 277
    move-object v1, v2

    .line 278
    goto/16 :goto_78

    .line 280
    :cond_117
    :goto_117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 283
    move-result p2

    .line 284
    if-nez p2, :cond_125

    .line 286
    if-eqz p3, :cond_1a7

    .line 288
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->isDisplayPathExist(Ljava/lang/String;)Z

    .line 291
    move-result p2

    .line 292
    if-eqz p2, :cond_1a7

    .line 294
    :cond_125
    const-string p2, "_encrypted_new"

    .line 296
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 299
    move-result p2

    .line 300
    if-nez p2, :cond_16f

    .line 302
    const-string p2, "_encrypted"

    .line 304
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 307
    move-result p2

    .line 308
    if-eqz p2, :cond_136

    .line 310
    goto :goto_16f

    .line 311
    :cond_136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 313
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v0, v4, 0x1

    .line 328
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object p2

    .line 335
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-result-object v1

    .line 339
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    move-result v4

    .line 343
    if-nez v4, :cond_15c

    .line 345
    invoke-static {p2, v5, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object p2

    .line 349
    :cond_15c
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object p2

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_167

    .line 359
    goto :goto_1a7

    .line 360
    :cond_167
    new-instance v2, Ljava/io/File;

    .line 362
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    move v4, v0

    .line 366
    move-object v0, p2

    .line 367
    goto :goto_117

    .line 368
    :cond_16f
    :goto_16f
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    move-result-object p2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v1, v4, 0x1

    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object v0

    .line 396
    invoke-static {p2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    move-result-object p2

    .line 400
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    move-result v4

    .line 404
    if-nez v4, :cond_199

    .line 406
    invoke-static {v0, v5, p2}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    move-result-object v0

    .line 410
    :cond_199
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    move-result-object p2

    .line 414
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    move-result p2

    .line 422
    if-eqz p2, :cond_1a8

    .line 424
    :cond_1a7
    :goto_1a7
    return-object v2

    .line 425
    :cond_1a8
    new-instance v2, Ljava/io/File;

    .line 427
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    move v4, v1

    .line 431
    goto/16 :goto_117

    .line 433
    :cond_1b0
    :goto_1b0
    return-object v1
.end method

.method public static getFileInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v1}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 82
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const/4 p0, 0x0

    .line 84
    iput-boolean p0, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 85
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    iput-wide p0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 87
    iget-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p0

    if-eqz v0, :cond_48

    goto :goto_4d

    .line 88
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    :goto_4d
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    return-object v1
.end method

.method public static getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 8

    .line 15
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v0, :cond_b

    .line 16
    check-cast p0, Lcom/android/cloud/bean/CloudFileItem;

    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    move-result-object p0

    return-object p0

    .line 17
    :cond_b
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v2}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_2b
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Util;->canReadCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 22
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Util;->canWriteCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    const/4 v3, 0x0

    .line 23
    invoke-static {v1, v3}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 26
    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 29
    iget-boolean p0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    iput-boolean p0, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    return-object v2
.end method

.method public static getFileInfo(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_4
    new-instance v0, Lcom/android/fileexplorer/model/StorageFileInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/StorageFileInfo;-><init>()V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 32
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 33
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    const/4 v2, 0x0

    .line 34
    iput-boolean v2, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 37
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 38
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getAvailableStorageSize(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/fileexplorer/model/StorageFileInfo;->availableSize:J

    .line 39
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->isSd()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->isUsb()Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :cond_43
    :goto_43
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/StorageUseInfoUtil;->getTotalStorageSize(Ljava/lang/String;Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    return-object v0
.end method

.method public static getFileInfo(Lcom/android/fileexplorer/mtp/DocumentInfo;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_4
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 43
    iget-wide v2, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->lastModified:J

    iput-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 44
    iget-wide v2, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->size:J

    iput-wide v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 45
    iget-object v2, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const/4 v2, 0x4

    .line 46
    iput v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    const-string v2, "."

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 48
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isWriteSupported()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    const/4 p0, 0x1

    .line 50
    iput-boolean p0, v0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 51
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_74

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v1, :cond_74

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_72

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 54
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    move-result v6

    if-nez v6, :cond_6b

    .line 55
    iget-object v5, v5, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    move v5, p0

    goto :goto_6c

    :cond_6b
    move v5, v3

    :goto_6c
    if-nez v5, :cond_4f

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_71
    move v3, v4

    .line 56
    :cond_72
    iput v3, v0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 57
    :cond_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FILESIZE"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/model/FileInfo;
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;ZZ)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;ZZ)Lcom/android/fileexplorer/model/FileInfo;
    .registers 7

    .line 59
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 60
    invoke-static {p0, p2}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 65
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->canReadCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 66
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->canWriteCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 67
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 68
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_7f

    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    if-nez v1, :cond_7f

    if-nez p3, :cond_62

    .line 69
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_60

    .line 70
    array-length p3, p0

    move v1, p1

    :goto_50
    if-ge p1, p3, :cond_5f

    aget-object v2, p0, p1

    .line 71
    invoke-static {v2, p2}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_5c

    add-int/lit8 v1, v1, 0x1

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_50

    :cond_5f
    move p1, v1

    .line 72
    :cond_60
    iput p1, v0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 73
    :cond_62
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getInstance()Lcom/android/fileexplorer/apptag/AppScanConfigManager;

    move-result-object p0

    iget-object p1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/AppScanConfigManager;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    if-nez p0, :cond_85

    .line 74
    iget-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    const-string p1, "/Android/data"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_85

    .line 75
    iget-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->packageName:Ljava/lang/String;

    goto :goto_85

    .line 76
    :cond_7f
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    :cond_85
    :goto_85
    return-object v0
.end method

.method public static getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "content"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getUriFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p0

    return-object p0

    .line 4
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v2}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2c

    return-object v1

    .line 7
    :cond_2c
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Util;->canReadCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 8
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Util;->canWriteCompat(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->isHiddenCompat(Ljava/io/File;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 12
    iput-object p0, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 14
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v2, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    return-object v2
.end method

.method public static getFileInfo(Ljcifs/smb/SmbFile;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 6

    .line 89
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x0

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1c
    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 95
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 96
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 97
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v1, :cond_3b

    .line 98
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    goto :goto_65

    .line 99
    :cond_3b
    :try_start_3b
    new-instance v1, Ljcifs/smb/SmbFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Lcom/android/fileexplorer/model/FileInfo;->count:I
    :try_end_5a
    .catch Ljava/net/MalformedURLException; {:try_start_3b .. :try_end_5a} :catch_65
    .catch Ljcifs/smb/SmbAuthException; {:try_start_3b .. :try_end_5a} :catch_65
    .catch Ljcifs/smb/SmbException; {:try_start_3b .. :try_end_5a} :catch_5b

    goto :goto_65

    :catch_5b
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljcifs/smb/SmbException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Util"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :catch_65
    :goto_65
    const/4 v1, 0x3

    .line 101
    iput v1, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 102
    :try_start_68
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->canRead()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 103
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->canWrite()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 104
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isHidden()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z
    :try_end_7a
    .catch Ljcifs/smb/SmbAuthException; {:try_start_68 .. :try_end_7a} :catch_7a

    :catch_7a
    return-object v0
.end method

.method public static getFileInfoV2(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 8

    .line 1
    instance-of v0, p0, Lcom/android/fileexplorer/model/AdFileItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    instance-of v0, p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    check-cast p0, Lcom/android/cloud/bean/CloudFileItem;

    .line 13
    invoke-static {p0}, Lcom/android/cloud/util/CloudFileUtils;->getCloudFileInfoV2(Lcom/android/cloud/bean/CloudFileItem;)Lcom/android/cloud/bean/CloudFileInfo;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_11
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    invoke-direct {v2}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getModifyTime()Ljava/lang/Long;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v3

    .line 35
    iput-wide v3, v2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 37
    const-wide/16 v5, 0x0

    .line 39
    cmp-long v3, v3, v5

    .line 41
    if-nez v3, :cond_2b

    .line 43
    return-object v1

    .line 44
    :cond_2b
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    .line 51
    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 56
    iput-boolean v1, v2, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 58
    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileSize()Ljava/lang/Long;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 67
    move-result-wide v3

    .line 68
    iput-wide v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 70
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getUniqueId(Ljava/lang/String;)J

    .line 73
    move-result-wide v0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    move-result-object v0

    .line 78
    iput-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 80
    iget-boolean p0, p0, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 82
    iput-boolean p0, v2, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 84
    return-object v2
.end method

.method public static getFileSortMethod(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/FileSortHelper;->getSortMethodFromPreference(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getInvalidFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canRead:Z

    .line 9
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->canWrite:Z

    .line 11
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isHidden:Z

    .line 13
    const-string v2, ""

    .line 15
    iput-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 17
    const-wide/16 v3, 0x0

    .line 19
    iput-wide v3, v0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 21
    iput-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    iput-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 25
    iput-wide v3, v0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 27
    return-object v0
.end method

.method private static getMimeType(Landroid/content/ClipData$Item;Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p0, :cond_1b

    .line 3
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1b

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    aput-object p0, v0, v1

    .line 27
    return-object v0

    .line 28
    :cond_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getStorageInfoByPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1c

    .line 13
    const-string v0, "Util"

    .line 15
    const-string v1, "getMountedStorageBySubPath clearAvailableStorage"

    .line 17
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/model/StorageUtil;->clearAvailableStorage()V

    .line 23
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getStorageInfoByPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2e

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_11

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    :cond_11
    return-object p0
.end method

.method public static getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-nez p0, :cond_5

    .line 3
    const-string p0, ""

    .line 5
    return-object p0

    .line 6
    :cond_5
    const/16 v0, 0x2f

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_f

    .line 15
    goto :goto_15

    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    :goto_15
    return-object p0
.end method

.method public static getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "/"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_13

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    :cond_13
    const/16 v0, 0x2f

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v0, v2, :cond_21

    .line 29
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_21
    const-string p0, ""

    .line 36
    return-object p0
.end method

.method public static getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;
    .registers 5

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getUserPrimaryClip"

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 18
    new-array v1, v2, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/content/ClipData;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    .line 26
    return-object v0

    .line 27
    :catch_1a
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static getReadablePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1d

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_1d

    .line 14
    :cond_d
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/model/StorageHelper;->getVolumeDescription(Lcom/android/fileexplorer/model/StorageInfo;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static getRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getStoragePathBySubPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Util;->getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_19

    .line 13
    const-string v0, "/"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_19

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :cond_19
    return-object p0

    .line 27
    :cond_1a
    const-string p0, ""

    .line 29
    return-object p0
.end method

.method public static getRelativePathAtVolume(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1b

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1b

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    return-object p1
.end method

.method public static getScreenHeight()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    return v0
.end method

.method public static getScreenWidth()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    return v0
.end method

.method public static getSdDirectory()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static getStorageInfoByPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getMountVolumeList()Ljava/util/ArrayList;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_23

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/fileexplorer/model/StorageInfo;

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_c

    .line 35
    return-object v1

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static getStoragePathBySubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_b

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getTextSeparator(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/Util;->sTextSeparator:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    const-string v0, ""

    .line 8
    sput-object v0, Lcom/android/fileexplorer/model/Util;->sTextSeparator:Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_18

    .line 16
    const p0, 0x7f11012a

    .line 19
    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    sput-object p0, Lcom/android/fileexplorer/model/Util;->sTextSeparator:Ljava/lang/String;

    .line 25
    :cond_18
    sget-object p0, Lcom/android/fileexplorer/model/Util;->sTextSeparator:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public static getUniqueId(Ljava/lang/String;)J
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_10

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result p0

    .line 15
    int-to-long v0, p0

    .line 16
    return-wide v0

    .line 17
    :cond_10
    const-wide/16 v0, 0x0

    .line 19
    return-wide v0
.end method

.method public static getUriFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 14
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 16
    const-string p0, ""

    .line 18
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 20
    const/4 p0, 0x5

    .line 21
    iput p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 23
    return-object v0
.end method

.method private static grantPermissionToTencentPackage(Landroid/net/Uri;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/Util;->TENCENT_MIRROR_PERMISSION:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1b

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 27
    goto :goto_6

    .line 28
    :cond_1b
    return-void
.end method

.method public static isAppSupport(Ljava/lang/String;I)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2c

    .line 16
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_15

    .line 18
    if-lt p0, p1, :cond_14

    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_14
    return v0

    .line 22
    :catch_15
    move-exception p0

    .line 23
    const-string p1, "isAppSupport error: "

    .line 25
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    const-string p1, "Util"

    .line 42
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_2c
    return v0
.end method

.method public static isFileNameTooLong(Ljava/lang/CharSequence;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_c

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x3c

    .line 9
    if-le p0, v0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static isHiddenCompat(Ljava/io/File;Z)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid30AndLater()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_19

    .line 9
    if-eqz p1, :cond_11

    .line 11
    invoke-static {p0, v2}, Lcom/android/fileexplorer/model/Util;->shouldShowFileOpt(Ljava/io/File;Z)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_18

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->shouldShowSystemFileOpt(Ljava/io/File;)Z

    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_18

    .line 24
    :goto_17
    move v1, v2

    .line 25
    :cond_18
    return v1

    .line 26
    :cond_19
    if-eqz p1, :cond_22

    .line 28
    invoke-static {p0, v2}, Lcom/android/fileexplorer/model/Util;->shouldShowFile(Ljava/io/File;Z)Z

    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_29

    .line 34
    goto :goto_28

    .line 35
    :cond_22
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->shouldShowSystemFile(Ljava/io/File;)Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_29

    .line 41
    :goto_28
    move v1, v2

    .line 42
    :cond_29
    return v1
.end method

.method public static isHideFileOrParent(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_12

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 2
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->isHideFileOrParent(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method public static isHideFileOrParent(Ljava/lang/String;)Z
    .registers 3

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method public static isInSameVolume(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3f

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_3f

    .line 15
    :cond_e
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    array-length v2, p0

    .line 22
    const/4 v3, 0x2

    .line 23
    if-le v2, v3, :cond_3f

    .line 25
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    aget-object v2, p0, v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    aget-object p0, p0, v3

    .line 40
    invoke-static {v1, p0, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_3f
    :goto_3f
    return v1
.end method

.method public static isInVisibleVolume(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getMountedStorageBySubPath(Ljava/lang/String;)Lcom/android/fileexplorer/model/StorageInfo;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_e

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StorageInfo;->isVisible()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static isMainThread()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public static isNormalFile(Ljava/lang/String;)Z
    .registers 2

    .line 1
    const-string v0, "/mnt/sdcard/.android_secure"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 9
    return p0
.end method

.method public static isSpaceNotEnough()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->getPrimaryStorageVolume()Lcom/android/fileexplorer/model/StorageInfo;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageInfoForVolume(Lcom/android/fileexplorer/model/StorageInfo;)Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_24

    .line 15
    iget-wide v1, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->free:J

    .line 17
    const-wide v3, 0x80000000L

    .line 22
    cmp-long v3, v1, v3

    .line 24
    if-gez v3, :cond_24

    .line 26
    const-wide/16 v3, 0xa

    .line 28
    mul-long/2addr v1, v3

    .line 29
    iget-wide v3, v0, Lcom/android/fileexplorer/model/StorageHelper$SDCardInfo;->total:J

    .line 31
    cmp-long v0, v1, v3

    .line 33
    if-gez v0, :cond_24

    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    :goto_25
    return v0
.end method

.method public static isSupportSetVideoWallpaper()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_42

    .line 8
    sget-boolean v0, Lcom/android/fileexplorer/model/Build;->IS_TABLET:Z

    .line 10
    if-eqz v0, :cond_c

    .line 12
    goto :goto_42

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    :try_start_d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "com.android.thememanager"

    .line 24
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_3c

    .line 30
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1f} :catch_25

    .line 32
    const/16 v3, 0x1ea

    .line 34
    if-lt v2, v3, :cond_24

    .line 36
    move v1, v0

    .line 37
    :cond_24
    return v1

    .line 38
    :catch_25
    move-exception v1

    .line 39
    const-string v2, "isSupportSetVideoWallpaper error: "

    .line 41
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const-string v2, "Util"

    .line 58
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_3c
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->disableVideoWallpaper()Z

    .line 64
    move-result v1

    .line 65
    xor-int/2addr v0, v1

    .line 66
    return v0

    .line 67
    :cond_42
    :goto_42
    return v1
.end method

.method public static isSupportSuperClipboard()Z
    .registers 2

    .line 1
    const-string v0, "persist.sys.support_super_clipboard"

    .line 3
    const-string v1, "0"

    .line 5
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "1"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private static isSystemFile(Ljava/io/File;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/Util;->SysFileDirs:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v3, v1, :cond_18

    .line 8
    aget-object v4, v0, v3

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_15

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_5

    .line 25
    :cond_18
    return v2
.end method

.method private static synthetic lambda$fitEllipsize$0(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;

    .line 7
    invoke-direct {v1, p1, p0}, Lcom/android/fileexplorer/model/Util$TextViewLayoutListener;-><init>(Landroid/widget/TextView;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 13
    return-void
.end method

.method public static makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p0, :cond_3b

    .line 3
    if-nez p1, :cond_5

    .line 5
    goto :goto_3b

    .line 6
    :cond_5
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_24

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_24

    .line 20
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_36

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_31

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    invoke-static {p0, v0, p1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_36
    :goto_36
    invoke-static {p0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_3b
    :goto_3b
    const-string p0, ""

    .line 62
    return-object p0
.end method

.method public static mkdirs(Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_f

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1e

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1c

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const/4 p0, 0x0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    .line 32
    :goto_1f
    return p0
.end method

.method public static openPrivatePolicy(Landroid/app/Activity;)V
    .registers 4

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {}, Lcom/android/fileexplorer/util/PrivacyUtil;->getPrivacyUri()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/content/Intent;

    .line 14
    const-string v2, "android.intent.action.VIEW"

    .line 16
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    const-string v0, "com.android.browser"

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    move-result-object v0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    move-result v0

    .line 37
    if-gtz v0, :cond_2a

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    :cond_2a
    const/high16 v0, 0x10000000

    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public static pickFolder(Landroid/app/Activity;IIZZZ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZZ)V

    return-void
.end method

.method public static pickFolder(Landroid/app/Activity;IIZZZZ)V
    .registers 9

    .line 2
    new-instance p6, Landroid/content/Intent;

    const-class v0, Lcom/android/fileexplorer/activity/FileActivity;

    invoke-direct {p6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "miui.intent.action.PICK_FOLDER"

    .line 3
    invoke-virtual {p6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "inner_call"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pick_button_name"

    invoke-virtual {p6, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pick_router"

    .line 7
    invoke-virtual {p6, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "pick_mi_drive"

    .line 8
    invoke-virtual {p6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "pick_mtp"

    .line 9
    invoke-virtual {p6, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x71

    .line 10
    invoke-virtual {p0, p6, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static renameReal(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_57

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const v1, 0x7f110023

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_40

    .line 64
    goto :goto_46

    .line 65
    :cond_40
    const-string v0, "."

    .line 67
    invoke-static {p0, v0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    :goto_46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    new-instance v0, Ljava/io/File;

    .line 80
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_57
    return-object v0
.end method

.method public static scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    const-string v1, "current_directory"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string p1, "current_cloudinfo_id"

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string p1, "device_index"

    .line 23
    const/16 p2, 0xd

    .line 25
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method public static scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_1f
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "current_directory"

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_36

    :cond_30
    const/4 p1, 0x2

    const-string v1, "device_index"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_36
    const/4 p1, 0x1

    const-string v1, "inner_call"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x70

    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 6

    .line 11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_16

    :cond_e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :cond_1f
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p1, :cond_37

    .line 16
    invoke-static {p1}, La/a;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "current_directory"

    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "current_directory_count"

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3d

    :cond_37
    const/4 p1, 0x2

    const-string p2, "device_index"

    .line 19
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3d
    const/4 p1, 0x1

    const-string p2, "inner_call"

    .line 20
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x70

    .line 21
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static setHomeClickListener(Landroid/view/View$OnClickListener;Lmiuix/appcompat/app/ActionBar;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getBackView(Lmiuix/appcompat/app/ActionBar;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_e

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const/high16 p0, 0xff0000

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public static setOnDoubleTapListener(Landroid/view/View;Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/fileexplorer/model/Util$2;

    .line 13
    invoke-direct {v2, p1}, Lcom/android/fileexplorer/model/Util$2;-><init>(Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;)V

    .line 16
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 19
    new-instance p1, Lcom/android/fileexplorer/model/Util$3;

    .line 21
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/model/Util$3;-><init>(Landroid/view/GestureDetector;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    return-void
.end method

.method public static setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "Util"

    .line 7
    if-nez v0, :cond_95

    .line 9
    if-eqz p0, :cond_95

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_95

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 23
    goto/16 :goto_95

    .line 25
    :cond_18
    :try_start_18
    new-instance v0, Landroid/content/Intent;

    .line 27
    const-string v2, "miui.intent.action.START_VIDEO_DETAIL"

    .line 29
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isExceptDevices()Ljava/lang/Boolean;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_8a

    .line 40
    const-string v3, "com.android.thememanager"

    .line 42
    if-eqz v2, :cond_35

    .line 44
    :try_start_2b
    new-instance v2, Landroid/content/ComponentName;

    .line 46
    const-string v4, "com.android.thememanager.detail.video.view.activity.VideoDetailActivity"

    .line 48
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    :cond_35
    const-string v2, "android.intent.category.DEFAULT"

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid33AndLater()Z

    .line 62
    move-result v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_8a

    .line 63
    const-string v4, "path"

    .line 65
    if-eqz v2, :cond_6f

    .line 67
    :try_start_42
    new-instance v2, Ljava/io/File;

    .line 69
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0, v3, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v3, "setVideoWallpaper dataUri = "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    goto :goto_86

    .line 112
    :cond_6f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v3, "setVideoWallpaper path = "

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_86
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_89} :catch_8a

    .line 138
    goto :goto_94

    .line 139
    :catch_8a
    move-exception p0

    .line 140
    const-string p1, "setVideoWallpaper, startActivity Error: "

    .line 142
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    move-result-object p1

    .line 146
    invoke-static {p0, p1, v1}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    :goto_94
    return-void

    .line 150
    :cond_95
    :goto_95
    const-string p0, "setVideoWallpaper error, path is null, or activity is finished."

    .line 152
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static shouldShowFile(Ljava/io/File;Z)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_34

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const-string v1, ".header_backup_"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_33

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v1, ".lock_"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_33

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string v1, ".thumb_"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_33

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const-string v1, ".nomedia"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_34

    .line 52
    :cond_33
    return v0

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_46

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_47

    .line 65
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->isHideFileOrParent(Ljava/io/File;)Z

    .line 68
    move-result p0

    .line 69
    if-nez p0, :cond_47

    .line 71
    :cond_46
    const/4 v0, 0x1

    .line 72
    :cond_47
    return v0
.end method

.method private static shouldShowFileOpt(Ljava/io/File;Z)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_34

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const-string v1, ".header_backup_"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_33

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v1, ".lock_"

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_33

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string v1, ".thumb_"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_33

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    const-string v1, ".nomedia"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_34

    .line 52
    :cond_33
    return v0

    .line 53
    :cond_34
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_44

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->isHideFileOrParent(Ljava/lang/String;)Z

    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_45

    .line 69
    :cond_44
    const/4 v0, 0x1

    .line 70
    :cond_45
    return v0
.end method

.method public static shouldShowSMBFile(Ljcifs/smb/SmbFile;)Z
    .registers 9

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/SettingActivitySpHelper;->getShowDotAndHiddenFiles()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isHidden()Z

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    return v2

    .line 17
    :cond_10
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v3, "."

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    return v2

    .line 30
    :cond_1d
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->getSdDirectory()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    sget-object v3, Lcom/android/fileexplorer/model/Util;->SysFileDirs:[Ljava/lang/String;

    .line 36
    array-length v4, v3

    .line 37
    move v5, v2

    .line 38
    :goto_25
    if-ge v5, v4, :cond_41

    .line 40
    aget-object v6, v3, v5

    .line 42
    invoke-static {v0, v6}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_3e

    .line 52
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3e

    .line 62
    return v2

    .line 63
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    .line 65
    goto :goto_25

    .line 66
    :cond_41
    return v1
.end method

.method public static shouldShowSystemFile(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->isSystemFile(Ljava/io/File;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_e

    .line 8
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->shouldShowFile(Ljava/io/File;Z)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static shouldShowSystemFileOpt(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->isSystemFile(Ljava/io/File;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_e

    .line 8
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Util;->shouldShowFileOpt(Ljava/io/File;Z)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static showSpaceNotEnoughDialog(Landroid/app/Activity;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_3d

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3d

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_3d

    .line 16
    :cond_f
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    const v1, 0x7f1102d0

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f1102cf

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    move-result-object v0

    .line 35
    const v1, 0x7f1100ed

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f1100ec

    .line 46
    new-instance v2, Lcom/android/fileexplorer/model/Util$1;

    .line 48
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/model/Util$1;-><init>(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method

.method public static sleep(I)V
    .registers 3

    .line 1
    int-to-long v0, p0

    .line 2
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 5
    goto :goto_9

    .line 6
    :catch_5
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :goto_9
    return-void
.end method

.method public static startFTP(Landroid/app/Activity;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "Util"

    .line 6
    const-string v1, "startFTP"

    .line 8
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    const-class v1, Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 15
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method public static startMiDrop(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/JumpUtil;->isSupportMiDrop()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-static {p0}, Lcom/android/fileexplorer/util/JumpUtil;->openMiDrop(Landroid/content/Context;)V

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/JumpUtil;->lunchGPToDownload(Landroid/content/Context;I)V

    .line 15
    :goto_e
    return-void
.end method

.method public static startSettings(Landroid/app/Activity;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 6
    const-class v1, Lcom/android/fileexplorer/activity/SettingActivity;

    .line 8
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    sget-boolean v1, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL:Z

    .line 13
    if-eqz v1, :cond_15

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 17
    const-string v1, "global.pad.intent.action.setting"

    .line 19
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static textEmphasize(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/model/Util;->textEmphasizeStr(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public static textEmphasizeStr(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_6d

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 21
    goto :goto_6d

    .line 22
    :cond_15
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    move-result v3

    .line 32
    :goto_1f
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 35
    move-result v2

    .line 36
    const/4 v4, -0x1

    .line 37
    if-ne v2, v4, :cond_27

    .line 39
    goto :goto_38

    .line 40
    :cond_27
    new-instance v4, Lcom/android/fileexplorer/model/Util$Pos;

    .line 42
    add-int v5, v2, v3

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-direct {v4, v2, v5, v6}, Lcom/android/fileexplorer/model/Util$Pos;-><init>(IILcom/android/fileexplorer/model/Util$1;)V

    .line 48
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 54
    move-result v2

    .line 55
    if-le v5, v2, :cond_6b

    .line 57
    :goto_38
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 59
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p0

    .line 66
    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_6a

    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/android/fileexplorer/model/Util$Pos;

    .line 78
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/Util$Pos;->getStart()I

    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/Util$Pos;->getEnd()I

    .line 85
    move-result v2

    .line 86
    if-eq v1, v2, :cond_41

    .line 88
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 90
    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 93
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/Util$Pos;->getStart()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/Util$Pos;->getEnd()I

    .line 100
    move-result p1

    .line 101
    const/16 v3, 0x21

    .line 103
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    goto :goto_41

    .line 107
    :cond_6a
    return-object v0

    .line 108
    :cond_6b
    move v2, v5

    .line 109
    goto :goto_1f

    .line 110
    :cond_6d
    :goto_6d
    return-object p0
.end method

.method public static viewToMiShare(Landroid/app/Activity;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-class v1, Lcom/android/fileexplorer/activity/FileActivity;

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "current_directory"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const v1, 0x7f11022b

    .line 23
    invoke-static {v1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "title"

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "inner_call"

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    const/16 v1, 0x70

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method public static waitViewAttach(Landroid/view/View;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;",
            "Ljava/util/function/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    goto :goto_12

    .line 11
    :cond_a
    new-instance v0, Lcom/android/fileexplorer/model/Util$4;

    .line 13
    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/model/Util$4;-><init>(Ljava/util/function/Consumer;Landroid/view/View;)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    :goto_12
    return-void
.end method
