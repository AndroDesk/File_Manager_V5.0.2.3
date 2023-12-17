.class public Lcom/fileexplorer/advert/AdvertApplication;
.super Ljava/lang/Object;
.source "AdvertApplication.java"

# interfaces
.implements Lcom/fileexplorer/commonlibrary/CustomApplication$ModelApplication;


# static fields
.field public static final TAG:Ljava/lang/String; = "AdvertApplication-TAG"

.field private static mApplicationContext:Landroid/app/Application;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 1
    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mApplicationContext:Landroid/app/Application;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    sput-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    .line 16
    :cond_f
    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    .line 18
    return-object v0
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/app/Application;

    .line 3
    sput-object p1, Lcom/fileexplorer/advert/AdvertApplication;->mApplicationContext:Landroid/app/Application;

    .line 5
    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->isMiuiLiteVersion()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_12

    .line 11
    const-string p1, "AdvertApplication-TAG"

    .line 13
    const-string v0, "onCreate: mi-lite-phone(Memory small ) is close ad!"

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/fileexplorer/advert/AdManagerController;->initAd()V

    .line 26
    return-void
.end method

.method public onDestory()V
    .registers 1

    return-void
.end method
