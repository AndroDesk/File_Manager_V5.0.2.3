.class Lcom/miui/maml/elements/WebViewScreenElement$4;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->runjs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field public final synthetic val$jsfun:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$4;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$4;->val$jsfun:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$4;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "javascript:"

    .line 9
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/WebViewScreenElement$4;->val$jsfun:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
