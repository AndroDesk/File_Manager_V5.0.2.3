.class public Lmiuix/internal/webkit/DeviceAccountLogin;
.super Ljava/lang/Object;
.source "DeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceAccountLogin"


# instance fields
.field public mAccountManager:Landroid/accounts/AccountManager;

.field public mActivity:Landroid/app/Activity;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    .line 16
    new-instance p1, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;

    .line 18
    invoke-direct {p1, p0}, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;-><init>(Lmiuix/internal/webkit/DeviceAccountLogin;)V

    .line 21
    iput-object p1, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 23
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    if-nez v0, :cond_d

    .line 10
    invoke-virtual {p0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    .line 13
    return-void

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_19

    .line 22
    aget-object v0, p1, v2

    .line 24
    :cond_17
    move-object v4, v0

    .line 25
    goto :goto_2b

    .line 26
    :cond_19
    array-length v1, p1

    .line 27
    :goto_1a
    if-ge v2, v1, :cond_17

    .line 29
    aget-object v3, p1, v2

    .line 31
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_28

    .line 39
    move-object v4, v3

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_1a

    .line 44
    :goto_2b
    if-eqz v4, :cond_4c

    .line 46
    invoke-virtual {p0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginStart()V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-string p2, "weblogin:"

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    iget-object v3, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mAccountManager:Landroid/accounts/AccountManager;

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v7, 0x0

    .line 70
    iget-object v8, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 72
    const/4 v9, 0x0

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {p0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginCancel()V

    .line 80
    :goto_4f
    return-void
.end method

.method public onLoginCancel()V
    .registers 1

    return-void
.end method

.method public onLoginFail()V
    .registers 1

    return-void
.end method

.method public onLoginPageFinished()V
    .registers 1

    return-void
.end method

.method public onLoginStart()V
    .registers 1

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
