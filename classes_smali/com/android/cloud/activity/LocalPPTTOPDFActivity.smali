.class public Lcom/android/cloud/activity/LocalPPTTOPDFActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "LocalPPTTOPDFActivity.java"


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "https://i.mi.com/drive/h5#/ppt2pdf?"

.field public static final REQUEST_CODE_OPEN_ALBUM:I


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mExtraParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileChooserIntent:Landroid/content/Intent;

.field private mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->REQUEST_CODE_OPEN_ALBUM:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mFileChooserIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mFileChooserIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->updateActionBarTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$302(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Lcom/android/cloud/task/QueryLiteTokenTask;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->loadUrl()V

    return-void
.end method

.method private getUrlWithToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    if-eqz p1, :cond_5a

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_5a
    new-array p1, v2, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrlWithToken() url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initActionBar()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    :cond_11
    const v0, 0x7f182c48

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->updateActionBarTitle(Ljava/lang/String;)V

    return-void
.end method

.method private initWebView()V
    .registers 7

    const v0, 0x7f03293f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "XiaoMi/HybridView/"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string v5, "NewMiDrive"

    aput-object v5, v3, v4

    const-string v4, "%s %s %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "user agent:"

    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lmiuix/webkit/WebViewClient;

    invoke-direct {v1}, Lmiuix/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;

    invoke-direct {v1, p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;-><init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {p0, v0}, Lcom/android/cloud/util/WebViewUtils;->adaptForceDarkInApi29(Landroid/content/Context;Landroid/webkit/WebView;)V

    return-void
.end method

.method private loadUrl()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://i.mi.com/drive/h5#/ppt2pdf?"

    invoke-direct {p0, v1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->getUrlWithToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onActivityResultOpenAlbum(Landroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    move v4, v2

    :goto_15
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_29

    invoke-virtual {p1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_28
    move-object v3, v0

    :cond_29
    if-eqz v1, :cond_36

    const/4 p1, 0x1

    new-array v3, p1, [Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v3, v2

    goto :goto_36

    :cond_35
    move-object v3, v0

    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startQueryTokenTask()V
    .registers 4

    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->stopQueryTokenTask()V

    new-instance v0, Lcom/android/cloud/task/QueryLiteTokenTask;

    invoke-direct {v0, p0}, Lcom/android/cloud/task/QueryLiteTokenTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    new-instance v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;

    invoke-direct {v1, p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;-><init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/cloud/task/QueryLiteTokenTask;->setListener(Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private stopQueryTokenTask()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cloud/task/QueryLiteTokenTask;->setListener(Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    :cond_10
    return-void
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_17

    const/4 v1, -0x1

    if-ne p2, v1, :cond_11

    const/4 p2, 0x1

    if-ne p1, p2, :cond_17

    invoke-direct {p0, p3}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->onActivityResultOpenAlbum(Landroid/content/Intent;)V

    goto :goto_17

    :cond_11
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_17
    :goto_17
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_e
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getAvailableAccountOrFinish(Landroid/app/Activity;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mAccount:Landroid/accounts/Account;

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->initActionBar()V

    const p1, 0x7f042d70

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->initWebView()V

    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->startQueryTokenTask()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->stopQueryTokenTask()V

    invoke-virtual {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->releaseCache()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_e
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public releaseCache()V
    .registers 3

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public setTheme(I)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_11

    :cond_d
    const p1, 0x7f1202db

    goto :goto_14

    :cond_11
    :goto_11
    const p1, 0x7f1202dc

    :goto_14
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    return-void
.end method
