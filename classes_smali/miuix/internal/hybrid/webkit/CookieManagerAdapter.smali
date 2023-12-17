.class public Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;
.super Lmiuix/hybrid/CookieManager;
.source "CookieManagerAdapter.java"


# instance fields
.field private mCookieManager:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Landroid/webkit/CookieManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/hybrid/CookieManager;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 6
    return-void
.end method


# virtual methods
.method public acceptCookie()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public allowFileSchemeCookiesImpl()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->allowFileSchemeCookies()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hasCookies()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->hasCookies()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public removeAllCookie()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 6
    return-void
.end method

.method public removeExpiredCookie()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 6
    return-void
.end method

.method public removeSessionCookie()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 6
    return-void
.end method

.method public setAcceptCookie(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 6
    return-void
.end method

.method public setAcceptFileSchemeCookiesImpl(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 4
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/CookieManagerAdapter;->mCookieManager:Landroid/webkit/CookieManager;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method
