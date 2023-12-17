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

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lmiuix/hybrid/HybridView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    return-void
.end method

.method public static synthetic access$002(Lmiuix/internal/hybrid/HybridManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    return p1
.end method

.method public static synthetic access$100(Lmiuix/internal/hybrid/HybridManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/HybridManager;->buildCallbackJavascript(Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/internal/hybrid/HybridManager;)Lmiuix/hybrid/HybridView;
    .registers 1

    iget-object p0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    return-object p0
.end method

.method private buildCallbackJavascript(Lmiuix/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    const-string v0, "(\'"

    invoke-static {p2, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\');"

    invoke-static {p2, p1, v0}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;
    .registers 5

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mPM:Lmiuix/internal/hybrid/PermissionManager;

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-virtual {v1}, Lmiuix/hybrid/PageContext;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/PermissionManager;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mFM:Lmiuix/internal/hybrid/FeatureManager;

    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/FeatureManager;->lookupFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance v0, Lmiuix/internal/hybrid/HybridException;

    const/16 v1, 0xcb

    const-string v2, "feature not permitted: "

    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;
    .registers 4

    new-instance p1, Lmiuix/hybrid/Request;

    invoke-direct {p1}, Lmiuix/hybrid/Request;-><init>()V

    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setAction(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lmiuix/hybrid/Request;->setRawParams(Ljava/lang/String;)V

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setPageContext(Lmiuix/hybrid/PageContext;)V

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setView(Landroid/view/View;)V

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mNativeInterface:Lmiuix/hybrid/NativeInterface;

    invoke-virtual {p1, p2}, Lmiuix/hybrid/Request;->setNativeInterface(Lmiuix/hybrid/NativeInterface;)V

    return-object p1
.end method

.method private config(Lmiuix/internal/hybrid/Config;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_25

    new-instance p2, Lmiuix/internal/hybrid/SecurityManager;

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lmiuix/internal/hybrid/SecurityManager;-><init>(Lmiuix/internal/hybrid/Config;Landroid/content/Context;)V

    invoke-virtual {p2}, Lmiuix/internal/hybrid/SecurityManager;->isExpired()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p2}, Lmiuix/internal/hybrid/SecurityManager;->isValidSignature()Z

    move-result p2

    if-nez p2, :cond_25

    :cond_19
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 p2, 0xca

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    new-instance p2, Lmiuix/internal/hybrid/FeatureManager;

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lmiuix/internal/hybrid/FeatureManager;-><init>(Lmiuix/internal/hybrid/Config;Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mFM:Lmiuix/internal/hybrid/FeatureManager;

    new-instance p2, Lmiuix/internal/hybrid/PermissionManager;

    invoke-direct {p2, p1}, Lmiuix/internal/hybrid/PermissionManager;-><init>(Lmiuix/internal/hybrid/Config;)V

    iput-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPM:Lmiuix/internal/hybrid/PermissionManager;

    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method private getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " XiaoMi/HybridView/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiuix/internal/hybrid/HybridManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    :cond_49
    sget-object p1, Lmiuix/internal/hybrid/HybridManager;->sUserAgent:Ljava/lang/String;

    return-object p1
.end method

.method private initSettings(Lmiuix/hybrid/HybridSettings;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1}, Lmiuix/hybrid/HybridSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/HybridManager;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .registers 4

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    invoke-virtual {v0}, Lmiuix/hybrid/HybridView;->getSettings()Lmiuix/hybrid/HybridSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/HybridManager;->initSettings(Lmiuix/hybrid/HybridSettings;)V

    new-instance v0, Lmiuix/hybrid/HybridViewClient;

    invoke-direct {v0}, Lmiuix/hybrid/HybridViewClient;-><init>()V

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->setHybridViewClient(Lmiuix/hybrid/HybridViewClient;)V

    new-instance v0, Lmiuix/hybrid/HybridChromeClient;

    invoke-direct {v0}, Lmiuix/hybrid/HybridChromeClient;-><init>()V

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    invoke-virtual {v1, v0}, Lmiuix/hybrid/HybridView;->setHybridChromeClient(Lmiuix/hybrid/HybridChromeClient;)V

    new-instance v0, Lmiuix/internal/hybrid/JsInterface;

    invoke-direct {v0, p0}, Lmiuix/internal/hybrid/JsInterface;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    iget-object v1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    const-string v2, "MiuiJsBridge"

    invoke-virtual {v1, v0, v2}, Lmiuix/hybrid/HybridView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    new-instance v1, Lmiuix/internal/hybrid/HybridManager$1;

    invoke-direct {v1, p0}, Lmiuix/internal/hybrid/HybridManager$1;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private loadConfig(I)Lmiuix/internal/hybrid/Config;
    .registers 4

    if-nez p1, :cond_9

    :try_start_2
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lmiuix/internal/hybrid/XmlConfigParser;->create(Landroid/content/Context;)Lmiuix/internal/hybrid/XmlConfigParser;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lmiuix/internal/hybrid/XmlConfigParser;->createFromResId(Landroid/content/Context;I)Lmiuix/internal/hybrid/XmlConfigParser;

    move-result-object p1

    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/XmlConfigParser;->parse(Ljava/util/Map;)Lmiuix/internal/hybrid/Config;

    move-result-object p1
    :try_end_14
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_2 .. :try_end_14} :catch_15

    return-object p1

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot load config: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "^[a-z-]+://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1f
    const-string v0, "file:///android_asset/hybrid/"

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_43

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-virtual {p2, v0}, Lmiuix/hybrid/PageContext;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    iget-boolean p2, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    if-nez p2, :cond_43

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_43

    const/4 p2, 0x3

    const-string v0, "hybrid"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_39

    const-string p2, "non-blocking response is "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lmiuix/internal/hybrid/HybridManager$JsInvocation;

    invoke-direct {v0, p0, p1, p3}, Lmiuix/internal/hybrid/HybridManager$JsInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/Response;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_43
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public config(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1}, Lmiuix/internal/hybrid/JsonConfigParser;->createFromString(Ljava/lang/String;)Lmiuix/internal/hybrid/JsonConfigParser;

    move-result-object p1

    const/4 v0, 0x0

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

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getHybridView()Lmiuix/hybrid/HybridView;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    return-object v0
.end method

.method public init(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lmiuix/hybrid/NativeInterface;

    invoke-direct {v0, p0}, Lmiuix/hybrid/NativeInterface;-><init>(Lmiuix/internal/hybrid/HybridManager;)V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mNativeInterface:Lmiuix/hybrid/NativeInterface;

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->loadConfig(I)Lmiuix/internal/hybrid/Config;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/hybrid/HybridManager;->config(Lmiuix/internal/hybrid/Config;Z)Ljava/lang/String;

    invoke-direct {p0}, Lmiuix/internal/hybrid/HybridManager;->initView()V

    if-nez p2, :cond_26

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->resolveUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_26
    if-eqz p2, :cond_2d

    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mView:Lmiuix/hybrid/HybridView;

    invoke-virtual {p1, p2}, Lmiuix/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    move-result-object v0
    :try_end_4
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_65

    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/hybrid/HybridFeature;->getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;

    move-result-object v2

    sget-object v3, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    if-ne v2, v3, :cond_24

    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lmiuix/hybrid/HybridFeature;->invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_24
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/internal/hybrid/HybridManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mReqMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lmiuix/hybrid/HybridFeature$Mode;->ASYNC:Lmiuix/hybrid/HybridFeature$Mode;

    if-ne v2, p2, :cond_46

    sget-object p2, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_46
    new-instance p2, Lmiuix/hybrid/Callback;

    iget-object p3, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-direct {p2, p0, p3, p4}, Lmiuix/hybrid/Callback;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lmiuix/hybrid/Request;->setCallback(Lmiuix/hybrid/Callback;)V

    sget-object p2, Lmiuix/internal/hybrid/HybridManager;->sPool:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;

    invoke-direct {p3, p0, v0, p1, p4}, Lmiuix/internal/hybrid/HybridManager$AsyncInvocation;-><init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/HybridFeature;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_65
    move-exception p1

    invoke-virtual {p1}, Lmiuix/internal/hybrid/HybridException;->getResponse()Lmiuix/hybrid/Response;

    move-result-object p1

    iget-object p2, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    invoke-virtual {p0, p1, p2, p4}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDetached()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/internal/hybrid/HybridManager;->mDetached:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/HybridManager;->buildFeature(Ljava/lang/String;)Lmiuix/hybrid/HybridFeature;

    move-result-object v0
    :try_end_4
    .catch Lmiuix/internal/hybrid/HybridException; {:try_start_0 .. :try_end_4} :catch_2c

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lmiuix/internal/hybrid/HybridManager;->buildRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiuix/hybrid/Request;

    move-result-object p1

    invoke-interface {v0, p1}, Lmiuix/hybrid/HybridFeature;->getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;

    move-result-object p1

    if-nez p1, :cond_21

    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0xcd

    const-string v1, "action not supported: "

    invoke-static {v1, p2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    new-instance p1, Lmiuix/hybrid/Response;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Lmiuix/internal/hybrid/HybridException;->getResponse()Lmiuix/hybrid/Response;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1, p1, p2, p3}, Lmiuix/hybrid/LifecycleListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onDestroy()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPageChange()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onPageChange()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onPause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onResume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onStart()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/LifecycleListener;

    invoke-virtual {v1}, Lmiuix/hybrid/LifecycleListener;->onStop()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeLifecycleListener(Lmiuix/hybrid/LifecycleListener;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPageContext(Lmiuix/hybrid/PageContext;)V
    .registers 2

    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager;->mPageContext:Lmiuix/hybrid/PageContext;

    return-void
.end method
