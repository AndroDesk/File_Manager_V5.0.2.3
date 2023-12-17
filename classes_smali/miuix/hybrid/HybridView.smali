.class public Lmiuix/hybrid/HybridView;
.super Landroid/widget/FrameLayout;
.source "HybridView.java"


# static fields
.field private static final PROGRESS_BAR_CIRCULAR:I = 0x1

.field private static final PROGRESS_BAR_HORIZONTAL:I = 0x2

.field private static final PROGRESS_BAR_NONE:I


# instance fields
.field private mBtnRetry:Landroid/widget/Button;

.field private mFactory:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

.field private mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

.field private mLoadingError:Z

.field private mManager:Lmiuix/internal/hybrid/HybridManager;

.field private mProgressBarStyle:I

.field private mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mPullable:Z

.field private mReloadView:Landroid/view/ViewGroup;

.field private mShowErrorPage:Z

.field private mTextProvider:Landroid/widget/TextView;

.field private mWebContainer:Lmiuix/internal/hybrid/WebContainerView;

.field private mWebSettings:Lmiuix/hybrid/HybridSettings;

.field private mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    sget-object v0, Lmiuix/hybrid/R$styleable;->HybridViewStyle:[I

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p2

    .line 11
    sget v0, Lmiuix/hybrid/R$styleable;->HybridViewStyle_hybridProgressBar:I

    .line 13
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lmiuix/hybrid/HybridView;->mProgressBarStyle:I

    .line 19
    sget v0, Lmiuix/hybrid/R$styleable;->HybridViewStyle_hybridErrorPage:I

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lmiuix/hybrid/HybridView;->mShowErrorPage:Z

    .line 28
    sget v0, Lmiuix/hybrid/R$styleable;->HybridViewStyle_hybridPullable:I

    .line 30
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lmiuix/hybrid/HybridView;->mPullable:Z

    .line 36
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p2

    .line 43
    const-string v0, "layout_inflater"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/view/LayoutInflater;

    .line 51
    sget v0, Lmiuix/hybrid/R$layout;->hybrid_view_layout:I

    .line 53
    invoke-virtual {p2, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-static {p1}, Lmiuix/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 59
    move-result-object p2

    .line 60
    iput-object p2, p0, Lmiuix/hybrid/HybridView;->mFactory:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 62
    invoke-virtual {p2, p1, p0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->createWebView(Landroid/content/Context;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 68
    sget p1, Lmiuix/hybrid/R$id;->webContainer:I

    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lmiuix/internal/hybrid/WebContainerView;

    .line 76
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mWebContainer:Lmiuix/internal/hybrid/WebContainerView;

    .line 78
    iget-object p2, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 80
    invoke-virtual {p2}, Lmiuix/internal/hybrid/provider/AbsWebView;->getBaseWebView()Landroid/view/View;

    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lmiuix/internal/hybrid/WebContainerView;->setWebView(Landroid/view/View;)V

    .line 87
    iget p1, p0, Lmiuix/hybrid/HybridView;->mProgressBarStyle:I

    .line 89
    if-ne p1, v2, :cond_65

    .line 91
    sget p1, Lmiuix/hybrid/R$id;->progress_circular:I

    .line 93
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 99
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 101
    goto :goto_72

    .line 102
    :cond_65
    const/4 p2, 0x2

    .line 103
    if-ne p1, p2, :cond_72

    .line 105
    sget p1, Lmiuix/hybrid/R$id;->progress_horizontal:I

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lmiuix/internal/hybrid/HybridProgressView;

    .line 113
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 115
    :cond_72
    :goto_72
    sget p1, Lmiuix/hybrid/R$id;->hybrid_provider:I

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 123
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    .line 125
    iget-boolean p2, p0, Lmiuix/hybrid/HybridView;->mPullable:Z

    .line 127
    if-eqz p2, :cond_83

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_83
    return-void
.end method

.method public static synthetic access$000(Lmiuix/hybrid/HybridView;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/hybrid/HybridView;->setReloadContentVisibility(I)V

    .line 4
    return-void
.end method

.method private setReloadContentVisibility(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_15

    .line 10
    iget-object v2, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/internal/hybrid/provider/AbsWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public canGoBack()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public clearCache(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->clearCache(Z)V

    .line 6
    return-void
.end method

.method public copyBackForwardList()Lmiuix/hybrid/HybridBackForwardList;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->copyBackForwardList()Lmiuix/hybrid/HybridBackForwardList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridManager;->clear()V

    .line 6
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 8
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->destroy()V

    .line 11
    return-void
.end method

.method public drawWebView(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->draw(Landroid/graphics/Canvas;)V

    .line 6
    return-void
.end method

.method public getContentHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->getContentHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getHybridManager()Lmiuix/internal/hybrid/HybridManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->getScale()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSettings()Lmiuix/hybrid/HybridSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebSettings:Lmiuix/hybrid/HybridSettings;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 7
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->getSettings()Lmiuix/hybrid/HybridSettings;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lmiuix/hybrid/HybridView;->mWebSettings:Lmiuix/hybrid/HybridSettings;

    .line 13
    :cond_c
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebSettings:Lmiuix/hybrid/HybridSettings;

    .line 15
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->getTitle()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->getUrl()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWebView()Lmiuix/internal/hybrid/provider/AbsWebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->goBack()V

    .line 6
    return-void
.end method

.method public hideReloadView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/hybrid/HybridView;->mShowErrorPage:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_e
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 21
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public reload()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->reload()V

    .line 6
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setHybridChromeClient(Lmiuix/hybrid/HybridChromeClient;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridChromeClient;->setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V

    .line 6
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mFactory:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 8
    invoke-virtual {v0, p1, p0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->createWebChromeClient(Lmiuix/hybrid/HybridChromeClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebChromeClient;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setWebChromeClient(Lmiuix/internal/hybrid/provider/AbsWebChromeClient;)V

    .line 17
    return-void
.end method

.method public setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/HybridView;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    return-void
.end method

.method public setHybridViewClient(Lmiuix/hybrid/HybridViewClient;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridViewClient;->setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V

    .line 6
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mFactory:Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 8
    invoke-virtual {v0, p1, p0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->createWebViewClient(Lmiuix/hybrid/HybridViewClient;Lmiuix/hybrid/HybridView;)Lmiuix/internal/hybrid/provider/AbsWebViewClient;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setWebViewClient(Lmiuix/internal/hybrid/provider/AbsWebViewClient;)V

    .line 17
    return-void
.end method

.method public setLoadingError(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lmiuix/hybrid/HybridView;->mLoadingError:Z

    .line 3
    return-void
.end method

.method public setProgress(I)V
    .registers 7

    .line 1
    const/16 v0, 0x50

    .line 3
    if-le p1, v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lmiuix/hybrid/HybridView;->mLoadingError:Z

    .line 7
    if-nez v0, :cond_b

    .line 9
    invoke-virtual {p0}, Lmiuix/hybrid/HybridView;->hideReloadView()V

    .line 12
    :cond_b
    const/16 v0, 0x64

    .line 14
    if-ne p1, v0, :cond_15

    .line 16
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebContainer:Lmiuix/internal/hybrid/WebContainerView;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 24
    if-nez v0, :cond_1e

    .line 26
    iget-object v1, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 28
    if-nez v1, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget v1, p0, Lmiuix/hybrid/HybridView;->mProgressBarStyle:I

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    const/16 v4, 0x8

    .line 37
    if-ne v1, v2, :cond_47

    .line 39
    if-nez v0, :cond_29

    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 45
    move-result v0

    .line 46
    if-ne v0, v4, :cond_34

    .line 48
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_34
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 60
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 63
    move-result v0

    .line 64
    if-ne p1, v0, :cond_6c

    .line 66
    iget-object p1, p0, Lmiuix/hybrid/HybridView;->mProgressView:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    goto :goto_6c

    .line 72
    :cond_47
    const/4 v0, 0x2

    .line 73
    if-ne v1, v0, :cond_6c

    .line 75
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 77
    if-nez v0, :cond_4f

    .line 79
    return-void

    .line 80
    :cond_4f
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 83
    move-result v0

    .line 84
    if-ne v0, v4, :cond_5a

    .line 86
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_5a
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 93
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/HybridProgressView;->setProgress(I)V

    .line 96
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 98
    invoke-virtual {v0}, Lmiuix/internal/hybrid/HybridProgressView;->getMax()I

    .line 101
    move-result v0

    .line 102
    if-ne p1, v0, :cond_6c

    .line 104
    iget-object p1, p0, Lmiuix/hybrid/HybridView;->mHorizontalProgressView:Lmiuix/internal/hybrid/HybridProgressView;

    .line 106
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method public setWebProvider(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    iget-object p1, p0, Lmiuix/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    .line 17
    const-string v0, ""

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    goto :goto_2f

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mTextProvider:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    sget v2, Lmiuix/hybrid/R$string;->hybrid_provider:I

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object p1, v2, v3

    .line 41
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_2f
    return-void
.end method

.method public showReloadView()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/hybrid/HybridView;->mShowErrorPage:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 8
    if-nez v0, :cond_2b

    .line 10
    sget v0, Lmiuix/hybrid/R$id;->webview_reload_stub:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewStub;

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    iput-object v0, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 26
    sget v1, Lmiuix/hybrid/R$id;->reload:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Button;

    .line 34
    iput-object v0, p0, Lmiuix/hybrid/HybridView;->mBtnRetry:Landroid/widget/Button;

    .line 36
    new-instance v1, Lmiuix/hybrid/HybridView$1;

    .line 38
    invoke-direct {v1, p0}, Lmiuix/hybrid/HybridView$1;-><init>(Lmiuix/hybrid/HybridView;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_2b
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mReloadView:Landroid/view/ViewGroup;

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-direct {p0, v1}, Lmiuix/hybrid/HybridView;->setReloadContentVisibility(I)V

    .line 53
    iget-object v0, p0, Lmiuix/hybrid/HybridView;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 55
    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 60
    return-void
.end method
