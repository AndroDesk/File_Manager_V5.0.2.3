.class Lcom/miui/maml/elements/WebViewScreenElement$6;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;

.field public final synthetic val$_v:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iput-boolean p2, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->val$_v:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/WebViewScreenElement;->access$100(Lcom/miui/maml/elements/WebViewScreenElement;)Landroid/webkit/WebView;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/miui/maml/elements/WebViewScreenElement$6;->val$_v:Z

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x4

    .line 14
    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void
.end method
