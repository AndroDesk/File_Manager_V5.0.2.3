.class Lcom/miui/maml/elements/WebViewScreenElement$7;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->pauseWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field public final synthetic val$pause:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iput-boolean p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->val$pause:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->val$pause:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 7
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$7;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 17
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 24
    :goto_17
    return-void
.end method
