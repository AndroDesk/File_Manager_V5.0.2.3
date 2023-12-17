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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    return-void
.end method


# virtual methods
.method public handleActivityResult(IILandroid/content/Intent;)V
    .registers 7

    iget v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    if-ne p1, v0, :cond_49

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    if-eqz p3, :cond_14

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, p1

    :goto_15
    if-nez p2, :cond_1f

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    return-void

    :cond_1f
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "WebViewFileTransferUtil"

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "upload file onActivityResult after parser url: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    invoke-static {p3}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    new-array v0, v2, [Landroid/net/Uri;

    aput-object p2, v0, v1

    invoke-interface {p3, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    :cond_49
    return-void
.end method

.method public setupUploadWebChromeClient(Landroid/webkit/WebView;Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;

    new-instance v1, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;-><init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$UploadWebChromeClient;-><init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils;->access$000(Landroid/webkit/WebView;)V

    return-void
.end method
