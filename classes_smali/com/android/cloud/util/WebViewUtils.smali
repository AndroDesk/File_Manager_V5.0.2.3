.class public Lcom/android/cloud/util/WebViewUtils;
.super Ljava/lang/Object;
.source "WebViewUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptForceDarkInApi29(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_16

    invoke-static {p0}, Lcom/android/cloud/util/WebViewUtils;->isSystemNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x2

    goto :goto_13

    :cond_12
    const/4 p0, 0x1

    :goto_13
    invoke-static {p1, p0}, Landroidx/appcompat/widget/a0;->t(Landroid/webkit/WebSettings;I)V

    :cond_16
    return-void
.end method

.method private static isSystemNightMode(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
