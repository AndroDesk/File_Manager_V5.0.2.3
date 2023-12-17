.class public Lmiuix/internal/hybrid/HybridManager;
.super Ljava/lang/Object;
.source "HybridManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/hybrid/HybridManager$JsInvocation;,
        Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "hybrid"

.field private static sPool:Ljava/util/concurrent/ExecutorService;

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDetached:Z

.field private mFM:Lmiuix/internal/hybrid/FeatureManager;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/hybrid/LifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeInterface:Lmiuix/hybrid/NativeInterface;

.field private mPM:Lmiuix/internal/hybrid/PermissionManager;

.field private mPageContext:Lmiuix/hybrid/PageContext;

.field private mReqMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiuix/hybrid/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lmiuix/hybrid/HybridView;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiuix/hybrid/HybridView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 22
    return-void
.end method

.method public static synthetic access$002(Lmiuix/internal/hybrid/HybridManager;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lmiuix/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/HybridManager;->buildCallbackJavascript(Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/internal/hybrid/HybridManager;)Lmiuix/hybrid/HybridView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object p0
.end method

.method private buildCallbackJavascript(Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string p1, ""

    .line 9
    return-object p1

    .line 10
    :cond_9
    const-string v0, "(\'"

    .line 12
    invoke-static {p2, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\\"

    .line 22
    const-string v1, "\\\\"

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "\'"

    .line 30
    const-string v1, "\\\'"

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "\');"

    .line 38
    invoke-static {p2, p1, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mPM:Lmiuix/internal/hybrid/PermissionManager;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 5
    invoke-virtual {v1}, Lmiuix/hybrid/PageContext;->getUrl()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_15

    .line 15
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mFM:Lmiuix/internal/hybrid/FeatureManager;

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    .line 24
    const/16 v1, 0xcb

    .line 26
    const-string v2, "feature not permitted: "

    .line 28
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    .line 35
    throw v0
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;
    .registers 4

    .line 1
    new-instance p1, Lmiuix/hybrid/Request;

    .line 3
    invoke-direct {p1}, Lmiuix/hybrid/Request;-><init>()V

    .line 6
    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setAction(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p3}, Lmiuix/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 14
    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setPageContext(Lmiuix/hybrid/PageContext;)V

    .line 17
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 19
    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setView(Landroid/view/View;)V

    .line 22
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mNativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 24
    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setNativeInterface(Lmiuix/hybrid/NativeInterface;)V

    .line 27
    return-object p1
.end method

.method private config(Lmiuix/internal/hybrid/Config;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_25

    .line 1
    new-instance p2, Lmiuix/internal/hybrid/SecurityManager;

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lmiuix/internal/hybrid/SecurityManager;-><init>(Lmiuix/internal/hybrid/Config;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Lmiuix/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p2}, Lmiuix/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result p2

    if-nez p2, :cond_25

    .line 3
    :cond_19
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 p2, 0xca

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_25
    new-instance p2, Lmiuix/internal/hybrid/FeatureManager;

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lmiuix/internal/hybrid/FeatureManager;-><init>(Lmiuix/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mFM:Lmiuix/internal/hybrid/FeatureManager;

    .line 5
    new-instance p2, Lmiuix/internal/hybrid/PermissionManager;

    invoke-direct {p2, p1}, Lmiuix/internal/hybrid/PermissionManager;-><init>(Lmiuix/internal/hybrid/Config;)V

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPM:Lmiuix/internal/hybrid/PermissionManager;

    .line 6
    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x80

    .line 7
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 10
    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    .line 11
    goto :goto_10

    .line 12
    :catch_b
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_10
    return-object p0
.end method

.method private getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_49

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p1, " XiaoMi/HybridView/"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, " "

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, "/"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    sput-object p1, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    .line 74
    :cond_49
    sget-object p1, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    .line 76
    return-object p1
.end method

.method private initSettings(Lmiuix/hybrid/HybridSettings;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    .line 5
    invoke-virtual {p1}, Lmiuix/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/HybridManager;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private initView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 3
    invoke-virtual {v0}, Lmiuix/hybrid/HybridView;->getSettings()Lmiuix/hybrid/HybridSettings;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/HybridManager;->initSettings(Lmiuix/hybrid/HybridSettings;)V

    .line 10
    new-instance v0, Lmiuix/hybrid/HybridViewClient;

    .line 12
    invoke-direct {v0}, Lmiuix/hybrid/HybridViewClient;-><init>()V

    .line 15
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 17
    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->setHybridViewClient(Lmiuix/hybrid/HybridViewClient;)V

    .line 20
    new-instance v0, Lmiuix/hybrid/HybridChromeClient;

    .line 22
    invoke-direct {v0}, Lmiuix/hybrid/HybridChromeClient;-><init>()V

    .line 25
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 27
    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->setHybridChromeClient(Lmiuix/hybrid/HybridChromeClient;)V

    .line 30
    new-instance v0, Lmiuix/internal/hybrid/JsInterface;

    .line 32
    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/JsInterface;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    .line 35
    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 37
    const-string v2, "MiuiJsBridge"

    .line 39
    invoke-virtual {v1, v0, v2}, Lmiuix/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 44
    new-instance v1, Lmiuix/internal/hybrid/HybridManager$1;

    .line 46
    invoke-direct {v1, p0}, Lmiuix/internal/hybrid/HybridManager$1;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    return-void
.end method

.method private loadConfig(I)Lmiuix/internal/hybrid/Config;
    .registers 4

    .line 1
    if-nez p1, :cond_9

    .line 3
    :try_start_2
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 5
    invoke-static {p1}, Lmiuix/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lmiuix/internal/hybrid/XmlConfigParser;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_f

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 12
    invoke-static {v0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;

    .line 15
    move-result-object p1

    .line 16
    :goto_f
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    .line 20
    move-result-object p1
    :try_end_14
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_2 .. :try_end_14} :catch_15

    .line 21
    return-object p1

    .line 22
    :catch_15
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 25
    const-string v1, "cannot load config: "

    .line 27
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method private resolveUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "^[a-z-]+://"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-object p1

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x2f

    .line 25
    if-ne v0, v1, :cond_1f

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    :cond_1f
    const-string v0, "file:///android_asset/hybrid/"

    .line 34
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method


# virtual methods
.method public addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_43

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_43

    .line 9
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 11
    invoke-virtual {p2, v0}, Lmiuix/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_43

    .line 17
    iget-boolean p2, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    .line 19
    if-nez p2, :cond_43

    .line 21
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 23
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_43

    .line 29
    const/4 p2, 0x3

    .line 30
    const-string v0, "hybrid"

    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_39

    .line 38
    const-string p2, "non-blocking response is "

    .line 40
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_39
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 60
    new-instance v0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;

    .line 62
    invoke-direct {v0, p0, p1, p3}, Lmiuix/internal/hybrid/HybridManager$JsInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    :cond_43
    return-void
.end method

.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 7
    :try_start_0
    invoke-static {p1}, Lmiuix/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lmiuix/internal/hybrid/JsonConfigParser;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Lmiuix/internal/hybrid/ConfigParser;->parse(Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmiuix/internal/hybrid/HybridManager;->config(Lmiuix/internal/hybrid/Config;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 9
    new-instance v0, Lmiuix/hybrid/Response;

    const/16 v1, 0xc9

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    .line 3
    return-object v0
.end method

.method public getHybridView()Lmiuix/hybrid/HybridView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 3
    return-object v0
.end method

.method public init(ILjava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lmiuix/hybrid/NativeInterface;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/hybrid/NativeInterface;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    .line 6
    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mNativeInterface:Lmiuix/hybrid/NativeInterface;

    .line 8
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->loadConfig(I)Lmiuix/internal/hybrid/Config;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lmiuix/internal/hybrid/HybridManager;->config(Lmiuix/internal/hybrid/Config;Z)Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lmiuix/internal/hybrid/HybridManager;->initView()V

    .line 19
    if-nez p2, :cond_26

    .line 21
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getContent()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_26

    .line 31
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getContent()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->resolveUri(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    :cond_26
    if-eqz p2, :cond_2d

    .line 41
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    .line 43
    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    .line 46
    :cond_2d
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    .line 4
    move-result-object v0
    :try_end_4
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_65

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;

    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lmiuix/hybrid/HybridFeature;->getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;

    .line 12
    move-result-object v2

    .line 13
    sget-object v3, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 15
    if-ne v2, v3, :cond_24

    .line 17
    new-instance p1, Lmiuix/hybrid/Response;

    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 23
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 25
    invoke-virtual {p0, p1, p2, p4}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    .line 28
    invoke-interface {v0, v1}, Lmiuix/hybrid/HybridFeature;->invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_24
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/internal/hybrid/HybridManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object p2, Lmiuix/hybrid/HybridFeature$Mode;->ASYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 48
    if-ne v2, p2, :cond_46

    .line 50
    sget-object p2, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    .line 52
    new-instance p3, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;

    .line 54
    invoke-direct {p3, p0, v0, p1, p4}, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 60
    new-instance p1, Lmiuix/hybrid/Response;

    .line 62
    const/4 p2, 0x2

    .line 63
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 66
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_46
    new-instance p2, Lmiuix/hybrid/Callback;

    .line 73
    iget-object p3, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 75
    invoke-direct {p2, p0, p3, p4}, Lmiuix/hybrid/Callback;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p2}, Lmiuix/hybrid/Request;->setCallback(Lmiuix/hybrid/Callback;)V

    .line 81
    sget-object p2, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance p3, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;

    .line 85
    invoke-direct {p3, p0, v0, p1, p4}, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    new-instance p1, Lmiuix/hybrid/Response;

    .line 93
    const/4 p2, 0x3

    .line 94
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 97
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :catch_65
    move-exception p1

    .line 103
    invoke-virtual {p1}, Lmiuix/internal/hybrid/HybridException;->getResponse()Lmiuix/hybrid/Response;

    .line 106
    move-result-object p1

    .line 107
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 109
    invoke-virtual {p0, p1, p2, p4}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    return-object p1
.end method

.method public isDetached()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    .line 3
    return v0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    .line 4
    move-result-object v0
    :try_end_4
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_2c

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v1}, Lmiuix/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Lmiuix/hybrid/HybridFeature;->getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_21

    .line 16
    new-instance p1, Lmiuix/hybrid/Response;

    .line 18
    const/16 v0, 0xcd

    .line 20
    const-string v1, "action not supported: "

    .line 22
    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, v0, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    new-instance p1, Lmiuix/hybrid/Response;

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    .line 40
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :catch_2c
    move-exception p1

    .line 46
    invoke-virtual {p1}, Lmiuix/internal/hybrid/HybridException;->getResponse()Lmiuix/hybrid/Response;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1, p1, p2, p3}, Lmiuix/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onDestroy()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onPageChange()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onPageChange()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onPause()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onResume()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onStart()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    .line 19
    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onStop()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public setPageContext(Lmiuix/hybrid/PageContext;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 3
    return-void
.end method
