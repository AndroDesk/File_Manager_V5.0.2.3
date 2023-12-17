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
.method public constructor <init>(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 6
    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$200(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Ljava/lang/String;)V

    .line 9
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

    .line 1
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 3
    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_17

    .line 9
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 11
    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$000(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/webkit/ValueCallback;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 21
    invoke-static {p1, v0}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 26
    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$002(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 29
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 31
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    .line 34
    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$102(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 38
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 40
    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    .line 47
    move-result p2

    .line 48
    const/4 p3, 0x1

    .line 49
    if-ne p2, p3, :cond_34

    .line 51
    move p2, p3

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 p2, 0x0

    .line 54
    :goto_35
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 56
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/android/cloud/activity/LocalPPTTOPDFActivity$1;->this$0:Lcom/android/cloud/activity/LocalPPTTOPDFActivity;

    .line 61
    invoke-static {p1}, Lcom/android/cloud/activity/LocalPPTTOPDFActivity;->access$100(Lcom/android/cloud/activity/LocalPPTTOPDFActivity;)Landroid/content/Intent;

    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return p3
.end method
