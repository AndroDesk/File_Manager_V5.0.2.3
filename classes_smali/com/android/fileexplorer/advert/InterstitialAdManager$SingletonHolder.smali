.class Lcom/android/fileexplorer/advert/InterstitialAdManager$SingletonHolder;
.super Ljava/lang/Object;
.source "InterstitialAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/advert/InterstitialAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/fileexplorer/advert/InterstitialAdManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/fileexplorer/advert/InterstitialAdManager;-><init>(Lcom/android/fileexplorer/advert/InterstitialAdManager$1;)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/advert/InterstitialAdManager$SingletonHolder;->INSTANCE:Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/fileexplorer/advert/InterstitialAdManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/advert/InterstitialAdManager$SingletonHolder;->INSTANCE:Lcom/android/fileexplorer/advert/InterstitialAdManager;

    .line 3
    return-object v0
.end method
