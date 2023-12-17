.class Lcom/miui/maml/elements/WebViewScreenElement$2;
.super Ljava/lang/Object;
.source "WebViewScreenElement.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
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
    iput-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$2;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/WebViewScreenElement$2;->this$0:Lcom/miui/maml/elements/WebViewScreenElement;

    .line 3
    iget-object p2, p1, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    const-string v0, "touch"

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method
