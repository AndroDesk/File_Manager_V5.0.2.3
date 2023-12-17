.class public Lmiuix/util/UrlResolver;
.super Ljava/lang/Object;
.source "UrlResolver.java"


# static fields
.field private static mResolveIntent:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 2
    invoke-static/range {v0 .. v8}, Lmiuix/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lmiuix/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    goto :goto_e

    :cond_c
    move-object/from16 v4, p7

    .line 4
    :goto_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 5
    :goto_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_7b

    .line 6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 7
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.browser"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.mi.globalbrowser"

    .line 8
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_78

    .line 9
    :cond_3a
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lmiuix/internal/util/UrlResolverHelper;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 10
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 11
    :cond_48
    :try_start_48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 12
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v11, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 13
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_57} :catch_78

    .line 14
    iget-object v9, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_78

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_78

    .line 15
    iget-object v8, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.android.chrome"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    iget-object v8, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.ume.browser.hs"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    goto :goto_78

    .line 16
    :cond_75
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_78
    :cond_78
    :goto_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 17
    :cond_7b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_88

    .line 18
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    .line 19
    :cond_88
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v8, :cond_90

    return-object v5

    .line 20
    :cond_90
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_97

    return-object v5

    .line 21
    :cond_97
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9e

    return-object v5

    .line 22
    :cond_9e
    invoke-static {v6}, Lmiuix/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a5

    return-object v5

    .line 23
    :cond_a5
    invoke-static {v4}, Lmiuix/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11e

    .line 24
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-static {v7}, Lmiuix/internal/util/UrlResolverHelper;->isBrowserFallbackScheme(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 27
    invoke-static {v4}, Lmiuix/internal/util/UrlResolverHelper;->getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move v4, v8

    goto :goto_c0

    :cond_bf
    move v4, v3

    .line 28
    :goto_c0
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p1, :cond_d5

    if-eqz v4, :cond_d0

    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    return-object v0

    .line 31
    :cond_d0
    invoke-static {p0, p2, v2}, Lmiuix/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 32
    :cond_d5
    :try_start_d5
    sget-object v1, Lmiuix/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-nez v1, :cond_fe

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.android.server.pm.PackageManagerService"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resolveIntent"

    new-array v9, v7, [Ljava/lang/Class;

    .line 34
    const-class v10, Landroid/content/Intent;

    aput-object v10, v9, v3

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    aput-object v10, v9, v4

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    .line 35
    :cond_fe
    sget-object v0, Lmiuix/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object p5, v1, v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_119} :catch_11a

    return-object v0

    :catch_11a
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11e
    return-object v5
.end method
