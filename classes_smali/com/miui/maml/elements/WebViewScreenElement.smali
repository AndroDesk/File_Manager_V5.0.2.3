.class public Lcom/miui/maml/elements/WebViewScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML.WebViewScreenE"

.field public static final TAG_NAME:Ljava/lang/String; = "WebView"

.field private static final USE_NETWORK_ALL:I = 0x2

.field private static final USE_NETWORK_WIFI:I = 0x1


# instance fields
.field private mCachePage:Z

.field private mCurUrl:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mUriFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lcom/miui/maml/data/Expression;

.field private mViewAdded:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 7
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 10
    move-result-object p2

    .line 11
    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    .line 15
    new-instance p2, Landroid/webkit/WebView;

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWindowContext:Landroid/content/Context;

    .line 19
    invoke-direct {p2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 24
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$1;

    .line 26
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$1;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 29
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 32
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 34
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$2;

    .line 36
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$2;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 44
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 47
    move-result-object p2

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 54
    const/16 v2, 0x64

    .line 56
    invoke-virtual {p2, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 59
    const-string p2, "userAgent"

    .line 61
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4f

    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 73
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 80
    :cond_4f
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 82
    new-instance v2, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;

    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v2, p0, v3}, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Lcom/miui/maml/elements/WebViewScreenElement$1;)V

    .line 88
    const-string v3, "maml"

    .line 90
    invoke-virtual {p2, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 95
    const/4 v2, -0x1

    .line 96
    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 101
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 108
    move-result-object p2

    .line 109
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 114
    move-result-object p2

    .line 115
    const-string v2, "uriExp"

    .line 117
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    invoke-static {p2, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 124
    move-result-object v2

    .line 125
    new-instance v3, Lcom/miui/maml/util/TextFormatter;

    .line 127
    const-string v4, "uri"

    .line 129
    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    invoke-direct {v3, p2, v4, v2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 136
    iput-object v3, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 138
    const-string v2, "cachePage"

    .line 140
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v2

    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 147
    move-result v2

    .line 148
    iput-boolean v2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 150
    const-string v2, "useNetwork"

    .line 152
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_bc

    .line 162
    const-string v2, "all"

    .line 164
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_aa

    .line 170
    goto :goto_bc

    .line 171
    :cond_aa
    const-string v0, "wifi"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_b5

    .line 179
    iput v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 181
    goto :goto_be

    .line 182
    :cond_b5
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 185
    move-result-object p1

    .line 186
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lcom/miui/maml/data/Expression;

    .line 188
    goto :goto_be

    .line 189
    :cond_bc
    :goto_bc
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 191
    :goto_be
    return-void
.end method

.method public static synthetic a(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->lambda$goBack$0()V

    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/WebViewScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 3
    return p0
.end method

.method private canUseNetwork()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_7

    .line 7
    return v1

    .line 8
    :cond_7
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_2d

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 17
    const-string v3, "connectivity"

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 25
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2b

    .line 31
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2b

    .line 37
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v1, v2

    .line 45
    :goto_2c
    return v1

    .line 46
    :cond_2d
    return v2
.end method

.method private final finishWebView()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$9;

    .line 5
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$9;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private final initWebView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 7
    if-eqz v0, :cond_12

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$8;

    .line 13
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$8;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_12
    return-void
.end method

.method private synthetic lambda$goBack$0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 6
    return-void
.end method

.method private pauseWebView(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$7;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$7;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v0, :cond_e

    .line 11
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 19
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    if-eq v3, v1, :cond_1b

    .line 25
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v2, v0

    .line 29
    :goto_1c
    return v2
.end method

.method private final updateView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 3
    if-eqz v0, :cond_25

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 25
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_25

    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mWebView:Landroid/webkit/WebView;

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 35
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_25
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public doTick(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 6
    invoke-virtual {p1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_30

    .line 16
    iget-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 18
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_30

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    const-string v0, "loadUrl: "

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    const-string v0, "MAML.WebViewScreenE"

    .line 43
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V

    .line 49
    :cond_30
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->updateView()V

    .line 52
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->finishWebView()V

    .line 7
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCachePage:Z

    .line 9
    if-nez v0, :cond_d

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 14
    :cond_d
    return-void
.end method

.method public goBack()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Landroidx/activity/b;

    .line 5
    const/16 v2, 0x14

    .line 7
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetworkExp:Lcom/miui/maml/data/Expression;

    .line 6
    if-eqz v0, :cond_e

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    move-result-wide v0

    .line 12
    double-to-int v0, v0

    .line 13
    iput v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mUseNetwork:I

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1a

    .line 23
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->initWebView()V

    .line 26
    goto :goto_21

    .line 27
    :cond_1a
    const-string v0, "MAML.WebViewScreenE"

    .line 29
    const-string v1, "ViewManager must be set before init"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_21
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/WebViewScreenElement;->canUseNetwork()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-string v0, "http"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    const-string v0, "loadUrl canceled due to useNetwork setting."

    .line 17
    const-string v1, "MAML.WebViewScreenE"

    .line 19
    invoke-static {v0, p1, v1}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    :cond_16
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mCurUrl:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$3;

    .line 29
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$3;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$6;

    .line 8
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$6;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public reload()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$5;

    .line 5
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/WebViewScreenElement$5;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mViewAdded:Z

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public runjs(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/miui/maml/elements/WebViewScreenElement$4;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$4;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method
