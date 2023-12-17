.class public Lmiuix/internal/webkit/WebViewClientDelegate;
.super Ljava/lang/Object;
.source "WebViewClientDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;
    }
.end annotation


# static fields
.field private static final FEATURE_ALL:I = -0x1

.field public static final FEATURE_AUTO_LOGIN:I = 0x2

.field public static final FEATURE_DEEP_LINK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WebViewClientDelegate"


# instance fields
.field private mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

.field private mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

.field private mSupportAutoLogin:Z

.field private mSupportDeepLink:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/lit8 p2, p2, -0x1

    or-int/2addr p1, p2

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_14

    move p2, v1

    goto :goto_15

    :cond_14
    move p2, v0

    .line 5
    :goto_15
    iput-boolean p2, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    move v0, v1

    .line 6
    :cond_1c
    iput-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    return-void
.end method

.method private static getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "com.android.internal.policy.DecorContext"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    const-string v2, "WebViewClientDelegate"

    .line 32
    if-eqz v1, :cond_57

    .line 34
    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object v1

    .line 38
    const-string v3, "mPhoneWindow"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object v3

    .line 56
    const-string v4, "getContext"

    .line 58
    new-array v5, v0, [Ljava/lang/Class;

    .line 60
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    move-result-object v3

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_57

    .line 72
    instance-of v1, v0, Landroid/content/Context;

    .line 74
    if-eqz v1, :cond_57

    .line 76
    check-cast v0, Landroid/content/Context;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_4f

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_57

    .line 80
    :catch_4f
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_57
    :goto_57
    instance-of v0, p0, Landroid/app/Activity;

    .line 90
    if-eqz v0, :cond_5e

    .line 92
    check-cast p0, Landroid/app/Activity;

    .line 94
    return-object p0

    .line 95
    :cond_5e
    const-string p0, "fail to get activity"

    .line 97
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method


# virtual methods
.method public onPageFinished(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 8
    sget-object p2, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 10
    if-ne p1, p2, :cond_14

    .line 12
    sget-object p1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 14
    iput-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 16
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    .line 18
    invoke-virtual {p1}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    .line 21
    :cond_14
    return-void
.end method

.method public onPageStarted(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-boolean p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    .line 3
    if-nez p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 8
    sget-object p2, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 10
    if-ne p1, p2, :cond_f

    .line 12
    sget-object p1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 14
    iput-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 16
    :cond_f
    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lmiuix/internal/webkit/WebViewClientDelegate;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_10

    .line 16
    return-void

    .line 17
    :cond_10
    iget-object v1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    .line 19
    if-nez v1, :cond_1b

    .line 21
    new-instance v1, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    .line 23
    invoke-direct {v1, v0, p1}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lmiuix/internal/hybrid/provider/AbsWebView;)V

    .line 26
    iput-object v1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    .line 28
    :cond_1b
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2f

    .line 34
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2b

    .line 40
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->goBack()V

    .line 43
    goto :goto_3c

    .line 44
    :cond_2b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 47
    goto :goto_3c

    .line 48
    :cond_2f
    sget-object v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 50
    iput-object v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    .line 52
    const/4 v0, 0x4

    .line 53
    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    .line 58
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_3c
    return-void
.end method

.method public shouldOverrideUrlLoading(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-static {p2}, Lmiuix/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_34

    .line 13
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Landroid/content/Intent;

    .line 23
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    move-result-object p2

    .line 27
    const-string v3, "android.intent.action.VIEW"

    .line 29
    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    const-string p2, "android.intent.category.BROWSABLE"

    .line 34
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {p1, v0, v2}, Lmiuix/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_2b

    .line 43
    return v1

    .line 44
    :cond_2b
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 46
    if-eqz p2, :cond_32

    .line 48
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    :cond_32
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_34
    return v1
.end method
