.class Lcom/miui/maml/elements/WebViewScreenElement$9;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->finishWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 11
    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 26
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_29

    .line 32
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 34
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 41
    goto :goto_34

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$9;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 44
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 47
    move-result-object v0

    .line 48
    const-string v1, "about:blank"

    .line 50
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 53
    :goto_34
    return-void
.end method
