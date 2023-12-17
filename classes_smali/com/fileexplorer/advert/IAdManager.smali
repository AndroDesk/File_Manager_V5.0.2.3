.class public interface abstract Lcom/fileexplorer/advert/IAdManager;
.super Ljava/lang/Object;
.source "IAdManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract addLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
.end method

.method public abstract getAdView(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdViewListener;)V
.end method

.method public abstract initAd()V
.end method

.method public abstract loadAd(Ljava/lang/String;)V
.end method

.method public abstract release(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
.end method

.method public abstract removeLoadAdListener(Ljava/lang/String;Lcom/fileexplorer/advert/listenter/AdLoadListener;)V
.end method

.method public abstract reportPV(Ljava/lang/String;)V
.end method

.method public abstract showAd(Ljava/lang/String;Landroid/app/Activity;Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;)V
.end method
