.class public abstract Lmiuix/hybrid/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .registers 1

    .line 1
    invoke-static {}, Lmiuix/hybrid/CookieManager;->getInstance()Lmiuix/hybrid/CookieManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/hybrid/CookieManager;->allowFileSchemeCookiesImpl()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static getInstance()Lmiuix/hybrid/CookieManager;
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lmiuix/internal/hybrid/provider/WebViewFactory;->getProvider(Landroid/content/Context;)Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lmiuix/internal/hybrid/provider/WebViewFactoryProvider;->getCookieManager()Lmiuix/hybrid/CookieManager;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .registers 2

    .line 1
    invoke-static {}, Lmiuix/hybrid/CookieManager;->getInstance()Lmiuix/hybrid/CookieManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lmiuix/hybrid/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public allowFileSchemeCookiesImpl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCookies()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllCookie()V
    .registers 1

    return-void
.end method

.method public removeExpiredCookie()V
    .registers 1

    return-void
.end method

.method public removeSessionCookie()V
    .registers 1

    return-void
.end method

.method public setAcceptCookie(Z)V
    .registers 2

    return-void
.end method

.method public setAcceptFileSchemeCookiesImpl(Z)V
    .registers 2

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
