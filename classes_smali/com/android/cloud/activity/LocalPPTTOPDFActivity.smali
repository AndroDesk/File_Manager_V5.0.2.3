.class public Lcom/android/cloud/activity/LocalPPTTOPDFActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "LocalPPTTOPDFActivity.java"


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "https://i.mi.com/drive/h5#/ppt2pdf?"

.field public static final REQUEST_CODE_OPEN_ALBUM:I = 0x1


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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mFileChooserIntent:Landroid/content/Intent;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mFileChooserIntent:Landroid/content/Intent;

    .line 3
    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->updateActionBarTitle(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$302(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    .line 3
    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Lcom/android/cloud/task/QueryLiteTokenTask;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->loadUrl()V

    .line 4
    return-void
.end method

.method private getUrlWithToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 11
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 23
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    .line 32
    if-eqz p1, :cond_5a

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5a

    .line 40
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mExtraParam:Ljava/util/Map;

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_5a

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    const-string v3, "&"

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "="

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    goto :goto_31

    .line 91
    :cond_5a
    new-array p1, v2, [Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v2, "getUrlWithToken() url:"

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    aput-object v0, p1, v4

    .line 112
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method

.method private initActionBar()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 7
    if-eqz v0, :cond_11

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 13
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 15
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 18
    :cond_11
    const v0, 0x7f1101de

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->updateActionBarTitle(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private initWebView()V
    .registers 7

    .line 1
    const v0, 0x7f0a04a9

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/webkit/WebView;

    .line 10
    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 12
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 27
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 30
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v3, v1

    .line 42
    const-string v4, "XiaoMi/HybridView/"

    .line 44
    aput-object v4, v3, v2

    .line 46
    const/4 v4, 0x2

    .line 47
    const-string v5, "NewMiDrive"

    .line 49
    aput-object v5, v3, v4

    .line 51
    const-string v4, "%s %s %s"

    .line 53
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 62
    const-string v3, "user agent:"

    .line 64
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    aput-object v0, v2, v1

    .line 81
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 86
    new-instance v1, Lmiuix/webkit/WebViewClient;

    .line 88
    invoke-direct {v1}, Lmiuix/webkit/WebViewClient;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 96
    new-instance v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;

    .line 98
    invoke-direct {v1, p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;-><init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 106
    invoke-static {p0, v0}, Lcom/android/cloud/util/WebViewUtils;->adaptForceDarkInApi29(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 109
    return-void
.end method

.method private loadUrl()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 3
    const-string v1, "https://i.mi.com/drive/h5#/ppt2pdf?"

    .line 5
    invoke-direct {p0, v1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->getUrlWithToken(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    return-void
.end method

.method private onActivityResultOpenAlbum(Landroid/content/Intent;)V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_35

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 11
    move-result-object p1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz p1, :cond_28

    .line 15
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 18
    move-result v3

    .line 19
    new-array v3, v3, [Landroid/net/Uri;

    .line 21
    move v4, v2

    .line 22
    :goto_15
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 25
    move-result v5

    .line 26
    if-ge v4, v5, :cond_29

    .line 28
    invoke-virtual {p1, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 35
    move-result-object v5

    .line 36
    aput-object v5, v3, v4

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_15

    .line 41
    :cond_28
    move-object v3, v0

    .line 42
    :cond_29
    if-eqz v1, :cond_36

    .line 44
    const/4 p1, 0x1

    .line 45
    new-array v3, p1, [Landroid/net/Uri;

    .line 47
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object p1

    .line 51
    aput-object p1, v3, v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-object v3, v0

    .line 55
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 57
    invoke-interface {p1, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 60
    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 62
    return-void
.end method

.method public static startActivity(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-class v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method private startQueryTokenTask()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->stopQueryTokenTask()V

    .line 4
    new-instance v0, Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/cloud/task/QueryLiteTokenTask;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 11
    new-instance v1, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$2;-><init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/cloud/task/QueryLiteTokenTask;->setListener(Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;)V

    .line 19
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 21
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v2, v2, [Ljava/lang/Void;

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void
.end method

.method private stopQueryTokenTask()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/cloud/task/QueryLiteTokenTask;->setListener(Lcom/android/cloud/task/QueryLiteTokenTask$QueryLiteTokenListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 15
    iput-object v1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mTokenTask:Lcom/android/cloud/task/QueryLiteTokenTask;

    .line 17
    :cond_10
    return-void
.end method

.method private updateActionBarTitle(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 6
    if-eqz v0, :cond_17

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne p2, v1, :cond_11

    .line 11
    const/4 p2, 0x1

    .line 12
    if-ne p1, p2, :cond_17

    .line 14
    invoke-direct {p0, p3}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->onActivityResultOpenAlbum(Landroid/content/Intent;)V

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 14
    return-void

    .line 15
    :cond_e
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0}, Lcom/micloud/midrive/utils/CheckAccountHelper;->getAvailableAccountOrFinish(Landroid/app/Activity;)Landroid/accounts/Account;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mAccount:Landroid/accounts/Account;

    .line 10
    if-nez p1, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->initActionBar()V

    .line 16
    const p1, 0x7f0d00e6

    .line 19
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 22
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->initWebView()V

    .line 25
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->startQueryTokenTask()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->stopQueryTokenTask()V

    .line 4
    invoke-virtual {p0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->releaseCache()V

    .line 7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 10
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onDestroy()V

    .line 13
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 8
    if-eq v0, v1, :cond_e

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 25
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 9
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/BaseActivity;->onResume()V

    .line 4
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 22
    return-void
.end method

.method public releaseCache()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v1, "about:blank"

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 22
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    iget-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->mWebView:Landroid/webkit/WebView;

    .line 35
    return-void
.end method

.method public setTheme(I)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isPad()Z

    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_11

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isFoldDevice()Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_d

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const p1, 0x7f1202db

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    :goto_11
    const p1, 0x7f1202dc

    .line 21
    :goto_14
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 24
    return-void
.end method
