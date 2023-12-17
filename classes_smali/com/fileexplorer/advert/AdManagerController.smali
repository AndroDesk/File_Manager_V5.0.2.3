.class public Lcom/fileexplorer/advert/AdManagerController;
.super Ljava/lang/Object;
.source "AdManagerController.java"

# interfaces
.implements Lcom/fileexplorer/advert/IAdManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fileexplorer/advert/AdManagerController$SingleHolder;
    }
.end annotation


# static fields
.field private static iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fileexplorer/advert/AdManager;

    invoke-direct {v0}, Lcom/fileexplorer/advert/AdManager;-><init>()V

    sput-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fileexplorer/advert/AdManagerController;
    .registers 1

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController$SingleHolder;->INSTANCE:Lcom/fileexplorer/advert/AdManagerController;

    return-object v0
.end method


# virtual methods
.method public addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 4

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1, p2}, Lcom/fileexplorer/advert/IAdManager;->addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    return-void
.end method

.method public getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V
    .registers 4

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1, p2}, Lcom/fileexplorer/advert/IAdManager;->getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V

    return-void
.end method

.method public initAd()V
    .registers 2

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0}, Lcom/fileexplorer/advert/IAdManager;->initAd()V

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1}, Lcom/fileexplorer/advert/IAdManager;->loadAd(Ljava/lang/String;)V

    return-void
.end method

.method public release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 4

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1, p2}, Lcom/fileexplorer/advert/IAdManager;->release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    return-void
.end method

.method public removeLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 4

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1, p2}, Lcom/fileexplorer/advert/IAdManager;->removeLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V

    return-void
.end method

.method public reportPV(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1}, Lcom/fileexplorer/advert/IAdManager;->reportPV(Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Ljava/lang/String;Landroid/app/Activity;Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;)V
    .registers 5

    sget-object v0, Lcom/fileexplorer/advert/AdManagerController;->iAdManagerImpl:Lcom/fileexplorer/advert/IAdManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/fileexplorer/advert/IAdManager;->showAd(Ljava/lang/String;Landroid/app/Activity;Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;)V

    return-void
.end method
