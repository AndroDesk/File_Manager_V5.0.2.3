.class public abstract Lmiuix/internal/hybrid/provider/AbsWebView;
.super Ljava/lang/Object;
.source "AbsWebView.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHybridView:Lmiuix/hybrid/HybridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/provider/AbsWebView;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lmiuix/internal/hybrid/provider/AbsWebView;->mHybridView:Lmiuix/hybrid/HybridView;

    .line 8
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public canGoBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public canGoForward()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public clearCache(Z)V
    .registers 2

    return-void
.end method

.method public copyBackForwardList()Lmiuix/hybrid/HybridBackForwardList;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .registers 1

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getBaseWebView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    return v0
.end method

.method public getSettings()Lmiuix/hybrid/HybridSettings;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .registers 1

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public reload()V
    .registers 1

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public setVisibility(I)V
    .registers 2

    return-void
.end method

.method public setWebChromeClient(Lmiuix/internal/hybrid/provider/AbsWebChromeClient;)V
    .registers 2

    return-void
.end method

.method public setWebViewClient(Lmiuix/internal/hybrid/provider/AbsWebViewClient;)V
    .registers 2

    return-void
.end method
