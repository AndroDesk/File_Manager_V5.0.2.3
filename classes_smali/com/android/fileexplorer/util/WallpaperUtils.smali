.class public Lcom/android/fileexplorer/util/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperUtils"

.field private static final THEME_MANAGER_SET_WALLPAPER_ACTION:Ljava/lang/String; = "miui.intent.action.START_WALLPAPER_DETAIL"

.field private static final THEME_MANAGER_WALLPAPER_CUSTOM_TITLE_KEY:Ljava/lang/String; = ":miui:starting_window_label"

.field private static final THEME_MANAGER_WALLPAPER_SETTER_CLASS:Ljava/lang/String; = "com.android.thememanager.activity.WallpaperDetailActivity"

.field private static final THEME_MANAGER_WALLPAPER_SETTER_PACKAGE:Ljava/lang/String; = "com.android.thememanager"

.field private static final THEME_MANAGER_WALLPAPER_SETTER_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final THEME_MANAGER_WALLPAPER_URI_KEY:Ljava/lang/String; = "Wallpaper_uri"

.field private static final WALLPAPER_CLASS:Ljava/lang/String; = "com.miui.home.launcher.setting.WallpaperPreviewActivity"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.miui.home"

.field private static final WALLPAPER_URI_KEY:Ljava/lang/String; = "Wallpaper_uri"

.field private static sWallpagerPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Landroid/content/ComponentName;

    .line 8
    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    return-object v0

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static setWallPapers(Landroid/content/Context;Ljava/io/File;)V
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 15
    move-result-object p1

    .line 16
    :goto_f
    sget-object v0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_58

    .line 18
    const-string v1, "com.android.thememanager"

    .line 20
    if-ne v0, v1, :cond_31

    .line 22
    :try_start_15
    new-instance v0, Landroid/content/Intent;

    .line 24
    const-string v2, "miui.intent.action.START_WALLPAPER_DETAIL"

    .line 26
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v2, Landroid/content/ComponentName;

    .line 31
    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    .line 33
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string p1, ":miui:starting_window_label"

    .line 44
    const-string v1, ""

    .line 46
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    goto :goto_50

    .line 50
    :cond_31
    new-instance v0, Landroid/content/Intent;

    .line 52
    const-string v1, "android.intent.action.ATTACH_DATA"

    .line 54
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    .line 59
    const-string v2, "com.miui.home"

    .line 61
    const-string v3, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    .line 63
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const-string v1, "Wallpaper_uri"

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    :goto_50
    const/4 p1, 0x1

    .line 82
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_57} :catch_58

    .line 88
    goto :goto_73

    .line 89
    :catch_58
    move-exception p0

    .line 90
    const-string p1, "setWallPapers error:"

    .line 92
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    const-string p1, "WallpaperUtils"

    .line 113
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_73
    return-void
.end method

.method public static supported(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_b

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p0

    .line 10
    xor-int/2addr p0, v1

    .line 11
    return p0

    .line 12
    :cond_b
    const-string v0, "miui.intent.action.START_WALLPAPER_DETAIL"

    .line 14
    const-string v2, "com.android.thememanager"

    .line 16
    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    .line 18
    invoke-static {p0, v0, v2, v3}, Lcom/android/fileexplorer/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_22

    .line 24
    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 26
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_22

    .line 32
    sput-object v2, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    .line 34
    return v1

    .line 35
    :cond_22
    const-string v0, "android.intent.action.ATTACH_DATA"

    .line 37
    const-string v2, "com.miui.home"

    .line 39
    const-string v3, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    .line 41
    invoke-static {p0, v0, v2, v3}, Lcom/android/fileexplorer/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_31

    .line 47
    sput-object v2, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    .line 49
    return v1

    .line 50
    :cond_31
    const-string p0, ""

    .line 52
    sput-object p0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    .line 54
    const/4 p0, 0x0

    .line 55
    return p0
.end method
