.class public Lcom/android/fileexplorer/advert/InterstitialAdManager;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/advert/InterstitialAdManager$SingletonHolder;
    }
.end annotation


# instance fields
.field private volatile mIsInterstitialAdSuccess:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/advert/InterstitialAdManager$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager;-><init>()V

    .line 4
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/advert/InterstitialAdManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/advert/InterstitialAdManager$SingletonHolder;->access$100()Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private tryShowInterAd(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/fileexplorer/advert/InterstitialAdManager;->mIsInterstitialAdSuccess:Z

    if-eqz v0, :cond_26

    const-string v0, "1.301.17.7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_26

    .line 2
    :cond_13
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fileexplorer/advert/AdManagerController;->reportPV(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/fileexplorer/advert/AdManagerController;->getInstance()Lcom/fileexplorer/advert/AdManagerController;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/advert/InterstitialAdManager$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/advert/InterstitialAdManager$1;-><init>(Lcom/android/fileexplorer/advert/InterstitialAdManager;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/fileexplorer/advert/AdManagerController;->showAd(Ljava/lang/String;Landroid/app/Activity;Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public setIsInterstitialAdSuccess(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/advert/InterstitialAdManager;->mIsInterstitialAdSuccess:Z

    .line 3
    return-void
.end method

.method public tryShowInterAd(Landroid/app/Activity;)V
    .registers 3

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/AdUtil;->isInterAdShow()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "1.301.17.7"

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_b
    return-void
.end method
