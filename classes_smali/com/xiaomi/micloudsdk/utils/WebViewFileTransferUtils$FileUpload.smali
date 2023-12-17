.class public Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;
.super Ljava/lang/Object;
.source "WebViewFileTransferUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileUpload"
.end annotation


# instance fields
.field public final fileChooserRequestCode:I

.field public valueCallback:Landroid/webkit/ValueCallback;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    .line 6
    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    .line 3
    if-ne p1, v0, :cond_49

    .line 5
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    if-eqz p3, :cond_14

    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p2, v0, :cond_14

    .line 16
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    move-result-object p2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object p2, p1

    .line 22
    :goto_15
    if-nez p2, :cond_1f

    .line 24
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 26
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 31
    return-void

    .line 32
    :cond_1f
    const/4 p3, 0x2

    .line 33
    new-array p3, p3, [Ljava/lang/Object;

    .line 35
    const-string v0, "WebViewFileTransferUtil"

    .line 37
    const/4 v1, 0x0

    .line 38
    aput-object v0, p3, v1

    .line 40
    const-string v0, "upload file onActivityResult after parser url: "

    .line 42
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v0, p3, v2

    .line 60
    invoke-static {p3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 63
    iget-object p3, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 65
    new-array v0, v2, [Landroid/net/Uri;

    .line 67
    aput-object p2, v0, v1

    .line 69
    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 74
    :cond_49
    return-void
.end method

.method public setupUploadWebChromeClient(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;

    .line 3
    new-instance v1, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;

    .line 5
    invoke-direct {v1, p0, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;-><init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;Landroid/app/Activity;)V

    .line 8
    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;-><init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 14
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->access$000(Landroid/webkit/WebView;)V

    .line 17
    return-void
.end method
