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
.field private static final FEATURE_ALL:I

.field public static final FEATURE_AUTO_LOGIN:I

.field public static final FEATURE_DEEP_LINK:I

.field private static final TAG:Ljava/lang/String; = "WebViewClientDelegate"


# instance fields
.field private mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

.field private mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

.field private mSupportAutoLogin:Z

.field private mSupportDeepLink:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/webkit/WebViewClientDelegate;->FEATURE_ALL:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/webkit/WebViewClientDelegate;->FEATURE_AUTO_LOGIN:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/internal/webkit/WebViewClientDelegate;->FEATURE_DEEP_LINK:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lmiuix/internal/webkit/WebViewClientDelegate;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    :goto_15
    iput-boolean p2, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    move v0, v1

    :cond_1c
    iput-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    return-void
.end method

.method private static getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WebViewClientDelegate"

    if-eqz v1, :cond_57

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mPhoneWindow"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContext"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_57

    check-cast v0, Landroid/content/Context;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4d} :catch_4f

    move-object p0, v0

    goto :goto_57

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    :goto_57
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5e

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_5e
    const-string p0, "fail to get activity"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)V
    .registers 3

    iget-boolean p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_14

    sget-object p1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p1}, Lmiuix/internal/webkit/DeviceAccountLogin;->onLoginPageFinished()V

    :cond_14
    return-void
.end method

.method public onPageStarted(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-boolean p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object p2, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    if-ne p1, p2, :cond_f

    sget-object p1, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    :cond_f
    return-void
.end method

.method public onReceivedLoginRequest(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportAutoLogin:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/webkit/WebViewClientDelegate;->getActivityContextFromView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    if-nez v1, :cond_1b

    new-instance v1, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;

    invoke-direct {v1, v0, p1}, Lmiuix/internal/webkit/DefaultDeviceAccountLogin;-><init>(Landroid/app/Activity;Lmiuix/internal/hybrid/provider/AbsWebView;)V

    iput-object v1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    :cond_1b
    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->goBack()V

    goto :goto_3c

    :cond_2b
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3c

    :cond_2f
    sget-object v0, Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    iput-object v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mLoginState:Lmiuix/internal/webkit/WebViewClientDelegate$LoginState;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmiuix/internal/hybrid/provider/AbsWebView;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mAccountLogin:Lmiuix/internal/webkit/DeviceAccountLogin;

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/internal/webkit/DeviceAccountLogin;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public shouldOverrideUrlLoading(Lmiuix/internal/hybrid/provider/AbsWebView;Ljava/lang/String;)Z
    .registers 7

    iget-boolean v0, p0, Lmiuix/internal/webkit/WebViewClientDelegate;->mSupportDeepLink:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p2}, Lmiuix/internal/util/UrlResolverHelper;->isMiUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lmiuix/internal/hybrid/provider/AbsWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p2, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0, v2}, Lmiuix/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-nez p2, :cond_2b

    return v1

    :cond_2b
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_32

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_32
    const/4 p1, 0x1

    return p1

    :cond_34
    return v1
.end method
