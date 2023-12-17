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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    const-string v1, "com.mi.globalbrowser"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

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

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    :try_start_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4a

    :cond_a
    sget-object v1, Lcom/fileexplorer/commonlibrary/CustomApplication;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v2, p2}, Lcom/android/fileexplorer/util/JumpUtil;->isPackageResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_46

    if-eqz v2, :cond_33

    return-object p2

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4a
    :goto_4a
    return-object v0
.end method

.method private static isPackageResolveInfo(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_19

    :cond_a
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_19

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    :goto_19
    return v0
.end method

.method public static isSupportMiDrop()Z
    .registers 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/IntentBuilder;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/android/fileexplorer/util/JumpUtil;->EXPECT_BROWSER_PACKAGE_NAME:Ljava/util/LinkedList;

    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/util/JumpUtil;->getOptimalPackageName(Landroid/content/Intent;Ljava/util/LinkedList;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1a

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1a
    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public static lunchGPToDownload(Landroid/content/Context;I)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    const-string p1, "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrTransfer"

    goto :goto_11

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    const-string p1, "https://play.google.com/store/apps/details?id=com.xiaomi.midrop&referrer=utm_source%3DFilemgrPC"

    goto :goto_11

    :cond_f
    const-string p1, "https://play.google.com/store/apps/details?id=com.mi.android.globalFileexplorer&referrer=utm_source%3DFilemgrPC"

    :goto_11
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/JumpUtil;->jumpLandingUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static openMiDrop(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1d
    return-void
.end method
