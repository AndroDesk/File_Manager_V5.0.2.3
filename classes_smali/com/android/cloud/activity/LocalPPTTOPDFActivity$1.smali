.class Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "LocalPPTTOPDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$200(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1, v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    :cond_17
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$102(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_34

    move p2, p3

    goto :goto_35

    :cond_34
    const/4 p2, 0x0

    :goto_35
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return p3
.end method
