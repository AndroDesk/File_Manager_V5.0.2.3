.class public Lmiuix/internal/hybrid/webkit/WebSettings;
.super Lmiuix/hybrid/HybridSettings;
.source "WebSettings.java"


# static fields
.field private static final INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;


# instance fields
.field private mWebSettings:Landroid/webkit/WebSettings;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Interface removed. Consider using Service Workers instead. See https://web.dev/appcache-removal/ for more information."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/hybrid/HybridSettings;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method public getUserAgentString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAlgorithmicDarkeningAllowed(Z)V

    :cond_b
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_27

    :try_start_6
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setAppCacheEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    return-void

    :catch_24
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    throw p1

    :cond_27
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    throw p1
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_23

    :try_start_6
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setAppCachePath"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    throw p1

    :cond_23
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    throw p1
.end method

.method public setCacheMode(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

.method public setForceDark(I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/a0;->t(Landroid/webkit/WebSettings;I)V

    :cond_b
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public setTextZoom(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public setUseWideViewPort(Z)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
