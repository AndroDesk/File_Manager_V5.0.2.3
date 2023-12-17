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

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "Interface removed. Consider using Service Workers instead. See https://web.dev/appcache-removal/ for more information."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebSettings;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/HybridSettings;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 6
    return-void
.end method


# virtual methods
.method public getUserAgentString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setAlgorithmicDarkeningAllowed(Z)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 9
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAlgorithmicDarkeningAllowed(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public setAllowContentAccess(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 6
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 6
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 6
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-ge v0, v1, :cond_27

    .line 7
    :try_start_6
    const-class v0, Landroid/webkit/WebSettings;

    .line 9
    const-string v1, "setAppCacheEnabled"

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v2, v5

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    .line 36
    return-void

    .line 37
    :catch_24
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    .line 39
    throw p1

    .line 40
    :cond_27
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    .line 42
    throw p1
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x21

    .line 5
    if-ge v0, v1, :cond_23

    .line 7
    :try_start_6
    const-class v0, Landroid/webkit/WebSettings;

    .line 9
    const-string v1, "setAppCachePath"

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    const-class v4, Ljava/lang/String;

    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v5

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    .line 32
    return-void

    .line 33
    :catch_20
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    .line 35
    throw p1

    .line 36
    :cond_23
    sget-object p1, Lmiuix/internal/hybrid/webkit/WebSettings;->INTERFACE_REMOVED_EXCEPTION:Ljava/lang/UnsupportedOperationException;

    .line 38
    throw p1
.end method

.method public setCacheMode(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 6
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 6
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 6
    return-void
.end method

.method public setForceDark(I)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 9
    invoke-static {v0, p1}, Landroidx/appcompat/widget/a0;->t(Landroid/webkit/WebSettings;I)V

    .line 12
    :cond_b
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 6
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 6
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 6
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 6
    return-void
.end method

.method public setTextZoom(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 6
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 6
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/WebSettings;->mWebSettings:Landroid/webkit/WebSettings;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 6
    return-void
.end method
