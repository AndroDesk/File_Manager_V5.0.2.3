.class public Lcom/android/fileexplorer/util/JumpUtil;
.super Ljava/lang/Object;
.source "JumpUtil.java"


# static fields
.field public static final CALLED_FROM_FTP:I = 0x2

.field public static final CALL_FROM_MIDROP:I = 0x1

.field private static final ENTRANCE_ID:Ljava/lang/String; = "entrance_id"

.field private static EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILES_EXPLORER_BUTTON:Ljava/lang/String; = "FilesExplorerButton"

.field private static final FTP_TO_FE:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.mi.android.globalFileexplorer&referrer=utm_source%3DFilemgrPC"

.field private static final FTP_TO_MIDROP:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrPC"

.field private static final MIDROP_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.midrop"

.field private static final MIDROP_TO_MIDROP:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrTransfer"

.field public static final PACKAGE_NAME_BROWSER:Ljava/lang/String; = "com.android.browser"

.field public static final PACKAGE_NAME_BROWSER_MIUI:Ljava/lang/String; = "com.mi.globalbrowser"

.field public static final PACKAGE_NAME_CHROME:Ljava/lang/String; = "com.android.chrome"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    .line 8
    const-string v1, "com.mi.globalbrowser"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    .line 15
    const-string v1, "com.android.browser"

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    .line 22
    const-string v1, "com.android.chrome"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOptimalPackageName(Landroid/content/Intent;Ljava/util/LinkedList;Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4a

    .line 4
    :try_start_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_4a

    .line 11
    :cond_a
    sget-object v1, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_18

    .line 24
    return-object v0

    .line 25
    :cond_18
    if-eqz p2, :cond_1f

    .line 27
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 36
    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_4a

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v1

    .line 52
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_23

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 64
    invoke-static {v2, p2}, Lcom/android/fileexplorer/util/JumpUtil;->isPackageResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    .line 67
    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_46

    .line 68
    if-eqz v2, :cond_33

    .line 70
    return-object p2

    .line 71
    :catch_46
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method private static isPackageResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_19

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_a

    .line 10
    goto :goto_19

    .line 11
    :cond_a
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    if-eqz p0, :cond_19

    .line 15
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 17
    if-eqz p0, :cond_19

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_19
    :goto_19
    return v0
.end method

.method public static isSupportMiDrop()Z
    .registers 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.SEND"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "com.xiaomi.midrop"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v1, "*/*"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    sget-object p1, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/util/JumpUtil;->getOptimalPackageName(Landroid/content/Intent;Ljava/util/LinkedList;Z)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1a

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public static lunchGPToDownload(Landroid/content/Context;I)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x1

    .line 5
    if-ne p1, v0, :cond_9

    .line 7
    const-string p1, "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrTransfer"

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_f

    .line 13
    const-string p1, "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrPC"

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    const-string p1, "https://play.google.com/store/apps/details?id=com.mi.android.globalFileexplorer&referrer=utm_source%3DFilemgrPC"

    .line 18
    :goto_11
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static openMiDrop(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.xiaomi.midrop"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 11
    goto :goto_10

    .line 12
    :catch_b
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1d

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    :cond_1d
    return-void
.end method
