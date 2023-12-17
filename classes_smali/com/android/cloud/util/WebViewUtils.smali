.class public Lcom/android/cloud/util/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptForceDarkInApi29(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    move-result-object p1

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1d

    .line 9
    if-lt v0, v1, :cond_16

    .line 11
    invoke-static {p0}, Lcom/android/cloud/util/WebViewUtils;->isSystemNightMode(Landroid/content/Context;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_12

    .line 17
    const/4 p0, 0x2

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x1

    .line 20
    :goto_13
    invoke-static {p1, p0}, Landroidx/appcompat/widget/a0;->t(Landroid/webkit/WebSettings;I)V

    .line 23
    :cond_16
    return-void
.end method

.method private static isSystemNightMode(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 11
    and-int/lit8 p0, p0, 0x30

    .line 13
    const/16 v0, 0x20

    .line 15
    if-ne p0, v0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method
