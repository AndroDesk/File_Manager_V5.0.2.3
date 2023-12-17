.class Lcom/android/fileexplorer/advert/InterstitialAdManager$1;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"

# interfaces
.implements Lcom/fileexplorer/advert/listenter/AdInterstitialShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/advert/InterstitialAdManager;->tryShowInterAd(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/advert/InterstitialAdManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/advert/InterstitialAdManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/advert/InterstitialAdManager$1;->this$0:Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public showSuccess(Ljava/lang/String;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_14

    .line 3
    sget-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->POS_ID_INTER_MAP:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_14

    .line 11
    const-string p1, "FE_AD_LOG"

    .line 13
    const-string v0, "showSuccess: "

    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/model/SettingManager;->setCategoryBackInterAdShow()V

    .line 21
    :cond_14
    return-void
.end method
