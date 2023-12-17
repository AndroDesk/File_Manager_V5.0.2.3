.class public Lcom/fileexplorer/advert/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/fileexplorer/advert/IAdManager;


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


# virtual methods
.method public addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 3

    return-void
.end method

.method public getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V
    .registers 3

    return-void
.end method

.method public initAd()V
    .registers 1

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 3

    return-void
.end method

.method public removeLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
    .registers 3

    return-void
.end method

.method public reportPV(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showAd(Ljava/lang/String;Landroid/app/Activity;Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;)V
    .registers 4

    return-void
.end method
