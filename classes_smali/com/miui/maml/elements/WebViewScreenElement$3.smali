.class Lcom/miui/maml/elements/WebViewScreenElement$3;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$3;->val$url:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 12
    return-void
.end method
