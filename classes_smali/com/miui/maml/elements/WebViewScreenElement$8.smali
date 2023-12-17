.class Lcom/miui/maml/elements/WebViewScreenElement$8;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->initWebView()V
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
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$200(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_36

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$400(Lcom/miui/maml/elements/WebViewScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 18
    const-string v0, "MAML.WebViewScreenE"

    .line 20
    const-string v1, "addWebView"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 27
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 35
    invoke-static {v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 41
    invoke-static {v2}, Lcom/miui/maml/elements/WebViewScreenElement;->access$300(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Lcom/miui/maml/elements/WebViewScreenElement;->access$202(Lcom/miui/maml/elements/WebViewScreenElement;Z)Z

    .line 54
    goto :goto_47

    .line 55
    :cond_36
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 57
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$500(Lcom/miui/maml/elements/WebViewScreenElement;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_47

    .line 63
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$8;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 65
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 72
    :cond_47
    :goto_47
    return-void
.end method
