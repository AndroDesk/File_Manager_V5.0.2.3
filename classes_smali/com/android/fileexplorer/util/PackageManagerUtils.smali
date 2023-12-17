.class public Lcom/android/fileexplorer/util/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_21

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_c

    .line 11
    monitor-exit v0

    .line 12
    return-object v2

    .line 13
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1f
    .catchall {:try_start_c .. :try_end_1d} :catchall_21

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catch_1f
    monitor-exit v0

    .line 33
    return-object v2

    .line 34
    :catchall_21
    move-exception p0

    .line 35
    monitor-exit v0

    .line 36
    throw p0
.end method

.method public static declared-synchronized getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_c
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0

    .line 13
    :catch_c
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0
.end method

.method public static declared-synchronized getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_16

    .line 11
    if-nez p0, :cond_d

    .line 13
    goto :goto_16

    .line 14
    :cond_d
    const/4 v1, 0x0

    .line 15
    :try_start_e
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 18
    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14
    .catchall {:try_start_e .. :try_end_12} :catchall_18

    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catch_14
    monitor-exit v0

    .line 22
    return-object v2

    .line 23
    :cond_16
    :goto_16
    monitor-exit v0

    .line 24
    return-object v2

    .line 25
    :catchall_18
    move-exception p0

    .line 26
    monitor-exit v0

    .line 27
    throw p0
.end method

.method public static declared-synchronized getDefaultActivityIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_c
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0

    .line 13
    :catch_c
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0
.end method

.method public static declared-synchronized getLaunchIntentForPackage(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_10
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0

    .line 17
    :catch_10
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0
.end method

.method public static declared-synchronized getPackageArchiveInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 8
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_d
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 9
    monitor-exit v0

    .line 10
    return-object p0

    .line 11
    :catchall_a
    move-exception p0

    .line 12
    monitor-exit v0

    .line 13
    throw p0

    .line 14
    :catch_d
    const/4 p0, 0x0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0
.end method

.method public static declared-synchronized getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_10
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0

    .line 17
    :catch_10
    const/4 p0, 0x0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0
.end method

.method public static declared-synchronized getResources(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .registers 4

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p1, :cond_14

    .line 7
    if-nez p0, :cond_9

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 13
    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_12
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_f
    move-exception p0

    .line 17
    monitor-exit v0

    .line 18
    throw p0

    .line 19
    :catch_12
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :cond_14
    :goto_14
    monitor-exit v0

    .line 22
    return-object v1
.end method

.method public static declared-synchronized isApkInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_26

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_c

    .line 11
    monitor-exit v0

    .line 12
    return v2

    .line 13
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    move-result-object v1

    .line 21
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 25
    iput-object p0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 27
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 29
    const/16 v1, 0x2000

    .line 31
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_24
    .catchall {:try_start_c .. :try_end_21} :catchall_26

    .line 34
    const/4 p0, 0x1

    .line 35
    monitor-exit v0

    .line 36
    return p0

    .line 37
    :catch_24
    monitor-exit v0

    .line 38
    return v2

    .line 39
    :catchall_26
    move-exception p0

    .line 40
    monitor-exit v0

    .line 41
    throw p0
.end method

.method public static declared-synchronized loadIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_c
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0

    .line 13
    :catch_c
    const/4 p0, 0x0

    .line 14
    monitor-exit v0

    .line 15
    return-object p0
.end method

.method public static declared-synchronized queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/util/PackageManagerUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 15
    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_14
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_11
    move-exception p0

    .line 19
    monitor-exit v0

    .line 20
    throw p0

    .line 21
    :catch_14
    const/4 p0, 0x0

    .line 22
    monitor-exit v0

    .line 23
    return-object p0
.end method
