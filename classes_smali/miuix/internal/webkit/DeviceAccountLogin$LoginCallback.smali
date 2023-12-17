.class Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;
.super Ljava/lang/Object;
.source "DeviceAccountLogin.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/webkit/DeviceAccountLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoginRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/internal/webkit/DeviceAccountLogin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/internal/webkit/DeviceAccountLogin;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/internal/webkit/DeviceAccountLogin;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    :try_start_b
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/os/Bundle;

    .line 18
    const-string v1, "authtoken"

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1d

    .line 26
    invoke-virtual {v0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    invoke-virtual {v0, p1}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginSuccess(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    .line 33
    goto :goto_2c

    .line 34
    :catch_21
    move-exception p1

    .line 35
    const-string v1, "DeviceAccountLogin"

    .line 37
    const-string v2, "Fail to login"

    .line 39
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-virtual {v0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    .line 45
    :goto_2c
    return-void
.end method
