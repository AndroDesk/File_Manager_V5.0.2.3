.class public Lcom/android/fileexplorer/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static final ACTION_START_MIDRIVE:Ljava/lang/String; = "miui.intent.action.START_MIDRIVE"

.field private static final DATA_PATH_DOWNLOAD:Ljava/lang/String; = "/download"

.field private static final DATA_SCHEME_FILE_TAG:Ljava/lang/String; = "filetag"

.field private static mDisableVideoWallpaper:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableVideoWallpaper()Z
    .registers 4

    .line 1
    const-string v0, "com.android.thememanager"

    .line 3
    const-string v1, "disableVideoWallpaper"

    .line 5
    sget-object v2, Lcom/android/fileexplorer/util/AppUtils;->mDisableVideoWallpaper:Ljava/lang/Boolean;

    .line 7
    if-eqz v2, :cond_d

    .line 9
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 25
    move-result-object v2

    .line 26
    const-string v3, "boolean"

    .line 28
    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_29

    .line 34
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_29

    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    const/4 v0, 0x0

    .line 43
    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/fileexplorer/util/AppUtils;->mDisableVideoWallpaper:Ljava/lang/Boolean;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    .line 49
    goto :goto_4a

    .line 50
    :catch_31
    move-exception v0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v3, "fail get resource : "

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    sput-object v0, Lcom/android/fileexplorer/util/AppUtils;->mDisableVideoWallpaper:Ljava/lang/Boolean;

    .line 75
    :goto_4a
    sget-object v0, Lcom/android/fileexplorer/util/AppUtils;->mDisableVideoWallpaper:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    move-result v0

    .line 81
    return v0
.end method

.method public static dpToPx(F)I
    .registers 2

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
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 19
    mul-float/2addr p0, v0

    .line 20
    const/high16 v0, 0x3f000000  # 0.5f

    .line 22
    add-float/2addr p0, v0

    .line 23
    float-to-int p0, p0

    .line 24
    return p0
.end method

.method public static dpToPxForRec(FF)I
    .registers 2

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static enterPrivateFolder(Landroid/app/Activity;)V
    .registers 5

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getACLockType(Landroid/content/Context;)I

    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_25

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->hasCommonPassword(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_21

    .line 26
    const-string v0, "file_explorer"

    .line 28
    const/16 v1, 0x68

    .line 30
    invoke-static {p0, v2, v0, v1}, Lcom/android/fileexplorer/encryption/EncryptUtil;->showSetPasswordConfirmDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;I)V

    .line 33
    goto :goto_7f

    .line 34
    :cond_21
    invoke-static {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->launchThisActivity(Landroid/app/Activity;)V

    .line 37
    goto :goto_7f

    .line 38
    :cond_25
    if-nez v0, :cond_2d

    .line 40
    const/16 v0, 0x6b

    .line 42
    invoke-static {p0, v0}, Lcom/android/fileexplorer/encryption/EncryptUtil;->displayPatternDialog(Landroid/app/Activity;I)V

    .line 45
    goto :goto_7f

    .line 46
    :cond_2d
    const/4 v1, 0x1

    .line 47
    if-ne v0, v1, :cond_7f

    .line 49
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->needShowPatternDialog()Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_64

    .line 55
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v1, 0x7f110460

    .line 63
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 66
    move-result-object v0

    .line 67
    const v1, 0x7f11045f

    .line 70
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 73
    move-result-object v0

    .line 74
    const v1, 0x7f1100eb

    .line 77
    new-instance v3, Lcom/android/fileexplorer/util/AppUtils$4;

    .line 79
    invoke-direct {v3, p0}, Lcom/android/fileexplorer/util/AppUtils$4;-><init>(Landroid/app/Activity;)V

    .line 82
    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 85
    move-result-object p0

    .line 86
    const v0, 0x7f110050

    .line 89
    invoke-virtual {p0, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 100
    goto :goto_7f

    .line 101
    :cond_64
    invoke-static {p0}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->launchThisActivity(Landroid/app/Activity;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_67} :catch_68

    .line 104
    goto :goto_7f

    .line 105
    :catch_68
    move-exception p0

    .line 106
    const-string v0, "Cannot use gesture function, mi sdk version is not correct! =="

    .line 108
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {p0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    const-string v0, "Encryption"

    .line 125
    invoke-static {v0, p0}, Lcom/android/fileexplorer/util/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_7f
    :goto_7f
    return-void
.end method

.method public static flattenIntentData(Landroid/content/Intent;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_2d

    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2d

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_2d

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "filetag"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2d

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "/download"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2d

    .line 39
    const-string v0, "from"

    .line 41
    const-string v1, "search"

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_2d
    return-void
.end method

.method public static getClipboardManager()Landroid/content/ClipboardManager;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

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
    return-object v0
.end method

.method public static getInstalledApps()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
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
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/16 v2, 0x80

    .line 20
    :try_start_13
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_35

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 40
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 42
    and-int/lit8 v3, v3, 0x1

    .line 44
    if-gtz v3, :cond_1b

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_31

    .line 49
    goto :goto_1b

    .line 50
    :catch_31
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :cond_35
    return-object v1
.end method

.method public static getPart2()Ljava/lang/String;
    .registers 1

    .line 1
    const v0, 0x7f1103d2

    .line 4
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public static gotoAppDetail(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-string v0, "package:"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/content/Intent;

    .line 24
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 26
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public static hasInstalledApp(Ljava/lang/String;)Z
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
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v0

    .line 21
    :try_start_14
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    move-result-object p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_18} :catch_1c

    .line 25
    if-eqz p0, :cond_1c

    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :catch_1c
    :cond_1c
    return v1
.end method

.method public static isAndroid24AndLater()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAndroid29AndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_8

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

.method public static isAndroid30AndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_8

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

.method public static isAndroid31AndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1f

    .line 5
    if-lt v0, v1, :cond_8

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

.method public static isAndroid33AndLater()Z
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_8

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

.method public static isInFullWindowGestureMode(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "force_fsg_nav_bar"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

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

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .registers 6

    .line 1
    const-string v0, "AppUtil"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    const-class v2, Landroid/app/Activity;

    .line 6
    const-string v3, "isInMultiWindowMode"

    .line 8
    new-array v4, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1d} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1d} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 30
    return p0

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_38

    .line 40
    :catch_27
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    goto :goto_38

    .line 49
    :catch_30
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_38
    return v1
.end method

.method private static isMIUI()Z
    .registers 7

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 3
    const-string v1, "Xiaomi"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_56

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_c
    new-instance v2, Ljava/util/Properties;

    .line 15
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 18
    new-instance v3, Ljava/io/FileInputStream;

    .line 20
    new-instance v4, Ljava/io/File;

    .line 22
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 25
    move-result-object v5

    .line 26
    const-string v6, "build.prop"

    .line 28
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_47
    .catchall {:try_start_c .. :try_end_21} :catchall_43

    .line 34
    :try_start_21
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 37
    const-string v4, "ro.miui.ui.version.code"

    .line 39
    invoke-virtual {v2, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    if-nez v4, :cond_3c

    .line 45
    const-string v4, "ro.miui.ui.version.name"

    .line 47
    invoke-virtual {v2, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_3c

    .line 53
    const-string v4, "ro.miui.internal.storage"

    .line 55
    invoke-virtual {v2, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3a} :catch_41
    .catchall {:try_start_21 .. :try_end_3a} :catchall_51

    .line 59
    if-eqz v0, :cond_3d

    .line 61
    :cond_3c
    const/4 v1, 0x1

    .line 62
    :cond_3d
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    return v1

    .line 66
    :catch_41
    move-exception v0

    .line 67
    goto :goto_4a

    .line 68
    :catchall_43
    move-exception v1

    .line 69
    move-object v3, v0

    .line 70
    move-object v0, v1

    .line 71
    goto :goto_52

    .line 72
    :catch_47
    move-exception v2

    .line 73
    move-object v3, v0

    .line 74
    move-object v0, v2

    .line 75
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    .line 78
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    goto :goto_56

    .line 82
    :catchall_51
    move-exception v0

    .line 83
    :goto_52
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 86
    throw v0

    .line 87
    :cond_56
    :goto_56
    return v1
.end method

.method public static isMainThread()Z
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public static showPermissionRequiredDialog(Landroid/app/Activity;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    const v1, 0x7f1102c5

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f1102c4

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/android/fileexplorer/util/AppUtils$2;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AppUtils$2;-><init>(Landroid/app/Activity;)V

    .line 34
    const v2, 0x7f110050

    .line 37
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/android/fileexplorer/util/AppUtils$1;

    .line 43
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/util/AppUtils$1;-><init>(Landroid/app/Activity;)V

    .line 46
    const p0, 0x7f11044b

    .line 49
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 60
    return-void
.end method

.method public static showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/util/AppUtils$3;

    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/android/fileexplorer/util/AppUtils$3;-><init>(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 11
    const-wide/16 p0, 0x64

    .line 13
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    return-void
.end method

.method public static showSoftInputRightNow(Landroid/app/Activity;ZLandroid/widget/EditText;)V
    .registers 5

    .line 1
    if-eqz p0, :cond_39

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_39

    .line 10
    :cond_9
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "input_method"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 22
    if-eqz p2, :cond_39

    .line 24
    if-eqz p1, :cond_2e

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_26

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 39
    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 42
    const/4 p0, 0x1

    .line 43
    invoke-virtual {v0, p2, p0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 46
    goto :goto_39

    .line 47
    :cond_2e
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 53
    move-result-object p0

    .line 54
    const/4 p1, 0x2

    .line 55
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    :cond_39
    :goto_39
    return-void
.end method
