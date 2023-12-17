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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setWallPapers(Landroid/content/Context;Ljava/io/File;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_f
    sget-object v0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_58

    const-string v1, "com.android.thememanager"

    if-ne v0, v1, :cond_31

    :try_start_15
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.START_WALLPAPER_DETAIL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_50

    :cond_31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATTACH_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.home"

    const-string v3, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "Wallpaper_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_50
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_57} :catch_58

    goto :goto_73

    :catch_58
    move-exception p0

    const-string p1, "setWallPapers error:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WallpaperUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    return-void
.end method

.method public static supported(Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_b
    const-string v0, "miui.intent.action.START_WALLPAPER_DETAIL"

    const-string v2, "com.android.thememanager"

    const-string v3, "com.android.thememanager.activity.WallpaperDetailActivity"

    invoke-static {p0, v0, v2, v3}, Lcom/android/fileexplorer/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v0, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    sput-object v2, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    return v1

    :cond_22
    const-string v0, "android.intent.action.ATTACH_DATA"

    const-string v2, "com.miui.home"

    const-string v3, "com.miui.home.launcher.setting.WallpaperPreviewActivity"

    invoke-static {p0, v0, v2, v3}, Lcom/android/fileexplorer/util/WallpaperUtils;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_31

    sput-object v2, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    return v1

    :cond_31
    const-string p0, ""

    sput-object p0, Lcom/android/fileexplorer/util/WallpaperUtils;->sWallpagerPackage:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method
