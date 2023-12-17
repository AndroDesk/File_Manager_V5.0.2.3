.class public Lmiuix/internal/webkit/WebViewWrapper;
.super Lmiuix/internal/hybrid/webkit/WebView;
.source "WebViewWrapper.java"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/webkit/WebView;-><init>(Landroid/content/Context;Lmiuix/hybrid/HybridView;)V

    .line 9
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebView;->mWebView:Landroid/webkit/WebView;

    .line 11
    return-void
.end method
