.class Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;
.super Ljava/lang/Object;
.source "WebViewFileTransferUtils.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileChooserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->setupUploadWebChromeClient(Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->val$activity:Landroid/app/Activity;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onFileChoose(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    .line 13
    iput-object p1, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    .line 15
    new-instance p1, Landroid/content/Intent;

    .line 17
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 19
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "android.intent.category.OPENABLE"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->val$activity:Landroid/app/Activity;

    .line 32
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    .line 38
    iget v0, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    .line 40
    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method
