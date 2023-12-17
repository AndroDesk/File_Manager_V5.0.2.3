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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileChoose(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    iget-object v0, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    iput-object p1, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->valueCallback:Landroid/webkit/ValueCallback;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload$1;->this$0:Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;

    iget v0, v0, Lcom/xiaomi/micloudsdk/utils/WebViewFileTransferUtils$FileUpload;->fileChooserRequestCode:I

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
