.class public Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;
.super Ljava/lang/Object;
.source "WebViewFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;,
        Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;,
        Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;,
        Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewFileTransferUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/webkit/WebView;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->setWebSettings(Landroid/webkit/WebView;)V

    .line 4
    return-void
.end method

.method private static setWebSettings(Landroid/webkit/WebView;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1e

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 24
    const-string v1, "%s SupportFileTransfer/1.0 "

    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const-string v0, "SupportFileTransfer/1.0"

    .line 33
    :goto_20
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static setupFileUpload(Landroid/webkit/WebView;Landroid/app/Activity;I)Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    .line 3
    invoke-direct {v0, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;-><init>(I)V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->setupUploadWebChromeClient(Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 9
    return-object v0
.end method

.method public static setupMIUISysDownloadListener(Landroid/webkit/WebView;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 9
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->setWebSettings(Landroid/webkit/WebView;)V

    .line 12
    return-void
.end method
