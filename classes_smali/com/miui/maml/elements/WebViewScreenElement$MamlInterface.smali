.class Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WebViewScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MamlInterface"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WebViewScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/WebViewScreenElement;Lcom/miui/maml/elements/WebViewScreenElement$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;-><init>(Lcom/miui/maml/elements/WebViewScreenElement;)V

    return-void
.end method


# virtual methods
.method public doAction(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public getDouble(I)D
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getObj(I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 10
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    int-to-double v1, p2

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 11
    return-void
.end method

.method public putObj(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public registerVariable(Ljava/lang/String;)I
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WebViewScreenElement$MamlInterface;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method
