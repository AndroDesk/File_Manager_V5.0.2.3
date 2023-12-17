.class public Lcom/android/fileexplorer/provider/SystemAdContentProvider;
.super Landroid/content/ContentProvider;
.source "SystemAdContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;
    }
.end annotation


# static fields
.field private static final AD_CONTENT_CODE:I

.field private static final AD_CONTENT_URI_AUTHORITY:Ljava/lang/String; = "com.mi.android.globalFileexplorer.splashAd"

.field private static final SPLASH_AD_ENABLE:Ljava/lang/String; = "splash_ad_enable"

.field private static final SPLASH_AD_PATH:Ljava/lang/String; = "splashEnable"

.field private static final TAG:Ljava/lang/String; = "SystemAdContentProvider"


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92f36

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/provider/SystemAdContentProvider;->AD_CONTENT_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 5

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.mi.android.globalFileexplorer.splashAd"

    const-string v2, "splashEnable"

    const/16 v3, 0x2a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    :try_start_0
    iget-object p2, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 p2, 0x2a0

    if-ne p1, p2, :cond_20

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-boolean p2, Lcom/android/fileexplorer/util/AdUtil;->IS_SHOW_AD:Z

    const-string p3, "splash_ad_enable"

    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;-><init>(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p2

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
