.class public Lmiuix/internal/webkit/DefaultDeviceAccountLogin;
.super Lmiuix/internal/webkit/DeviceAccountLogin;
.source "DefaultDeviceAccountLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialog"

.field private static final MSG_LOGIN_FINISH:I = 0x1

.field private static final MSG_SHOW_DIALOG:I = 0x0

.field private static final SHOW_DIALOG_DELAY:I = 0x1f4


# instance fields
.field private mDialogFragment:Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiuix/internal/hybrid/provider/AbsWebView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/internal/webkit/DeviceAccountLogin;-><init>(Landroid/app/Activity;)V

    .line 4
    iput-object p2, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 6
    new-instance p1, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;

    .line 8
    invoke-direct {p1, p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$1;-><init>(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V

    .line 11
    iput-object p1, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 13
    return-void
.end method

.method public static synthetic access$000(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->showLoginProgress()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lmiuix/internal/webkit/DefaultDeviceAccountLogin;)Lmiuix/internal/hybrid/provider/AbsWebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    return-object p0
.end method

.method private dismissDialog()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mDialogFragment:Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mDialogFragment:Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 19
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mDialogFragment:Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 25
    return-void
.end method

.method private showLoginProgress()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    .line 4
    new-instance v0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 6
    invoke-direct {v0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mDialogFragment:Lmiuix/internal/webkit/DefaultDeviceAccountLogin$ProgressDialogFragment;

    .line 11
    :try_start_a
    iget-object v1, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 16
    move-result-object v1

    .line 17
    const-string v2, "dialog"

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_15} :catch_15

    .line 22
    :catch_15
    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    .line 4
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 10
    return-void
.end method

.method public onLoginFail()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->dismissDialog()V

    .line 4
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lmiuix/internal/webkit/DeviceAccountLogin;->mActivity:Landroid/app/Activity;

    .line 12
    sget v2, Lmiuix/hybrid/R$string;->web_sso_login_fail:I

    .line 14
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method

.method public onLoginPageFinished()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    return-void
.end method

.method public onLoginStart()V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mHandler:Landroid/os/Handler;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x1f4

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;->mWebView:Lmiuix/internal/hybrid/provider/AbsWebView;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    return-void
.end method
