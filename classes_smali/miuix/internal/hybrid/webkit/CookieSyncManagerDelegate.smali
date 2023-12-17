.class public Lmiuix/internal/hybrid/webkit/CookieSyncManagerDelegate;
.super Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;
.source "CookieSyncManagerDelegate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/hybrid/provider/AbsCookieSyncManager;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createInstance(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 4
    return-void
.end method

.method public getInstance()V
    .registers 1

    .line 1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 4
    return-void
.end method

.method public sync()V
    .registers 2

    .line 1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 8
    return-void
.end method
