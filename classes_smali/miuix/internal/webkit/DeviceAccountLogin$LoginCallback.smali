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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/webkit/DeviceAccountLogin;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin$LoginCallback;->mLoginRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/internal/webkit/DeviceAccountLogin;

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    invoke-virtual {v0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    goto :goto_2c

    :cond_1d
    invoke-virtual {v0, p1}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginSuccess(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception p1

    const-string v1, "DeviceAccountLogin"

    const-string v2, "Fail to login"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginFail()V

    :goto_2c
    return-void
.end method
