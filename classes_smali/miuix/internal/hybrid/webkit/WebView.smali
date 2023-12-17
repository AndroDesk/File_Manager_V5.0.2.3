.class public Lmiuix/internal/hybrid/webkit/WebView;
.super Lmiuix/internal/hybrid/provider/AbsWebView;
.source "WebView.java"


# instance fields
.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/internal/hybrid/provider/AbsWebView;-><init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V

    .line 4
    new-instance p1, Landroid/webkit/WebView;

    .line 6
    iget-object p2, p0, Lmiuix/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 13
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public canGoBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public canGoForward()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public clearCache(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 6
    return-void
.end method

.method public copyBackForwardList()Lmiuix/hybrid/HybridBackForwardList;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebBackForwardList;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/WebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 12
    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 6
    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSettings()Lmiuix/hybrid/HybridSettings;
    .registers 3

    .line 1
    new-instance v0, Lmiuix/internal/hybrid/webkit/WebSettings;

    .line 3
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 5
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lmiuix/internal/hybrid/webkit/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    .line 12
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 6
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public reload()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 6
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    return-void
.end method

.method public setWebChromeClient(Lmiuix/internal/hybrid/provider/AbsWebChromeClient;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebChromeClient;->getWebChromeClient()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/webkit/WebChromeClient;

    .line 9
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 12
    return-void
.end method

.method public setWebViewClient(Lmiuix/internal/hybrid/provider/AbsWebViewClient;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 3
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebViewClient;->getWebViewClient()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/webkit/WebViewClient;

    .line 9
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 12
    return-void
.end method
