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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mApplicationContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    :cond_f
    sget-object v0, Lcom/fileexplorer/advert/AdvertApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/app/Application;

    sput-object p1, Lcom/fileexplorer/advert/AdvertApplication;->mApplicationContext:Landroid/app/Application;

    invoke-static {}, Lcom/fileexplorer/advert/util/Utils;->isMiuiLiteVersion()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "AdvertApplication-TAG"

    const-string v0, "onCreate: mi-lite-phone(Memory small ) is close ad!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fileexplorer/advert/AdManagerController;->initAd()V

    return-void
.end method

.method public onDestory()V
    .registers 1

    return-void
.end method
