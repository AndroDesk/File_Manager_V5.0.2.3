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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/webkit/WebView;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->setWebSettings(Landroid/webkit/WebView;)V

    return-void
.end method

.method private static setWebSettings(Landroid/webkit/WebView;)V
    .registers 4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s SupportFileTransfer/1.0 "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    const-string v0, "SupportFileTransfer/1.0"

    :goto_20
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public static setupFileUpload(Landroid/webkit/WebView;Landroid/app/Activity;I)Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;
    .registers 4

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    invoke-direct {v0, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->setupUploadWebChromeClient(Landroid/webkit/WebView;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static setupMIUISysDownloadListener(Landroid/webkit/WebView;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$MIUISysDownloadListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->setWebSettings(Landroid/webkit/WebView;)V

    return-void
.end method
