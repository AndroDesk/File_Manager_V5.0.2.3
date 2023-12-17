.class public Lcom/miui/maml/SystemCommandListener;
.super Ljava/lang/Object;
.source "SystemCommandListener.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# static fields
.field private static final CLEAR_RESOURCE:Ljava/lang/String; = "__clearResource"

.field private static final REQUEST_UPDATE:Ljava/lang/String; = "__requestUpdate"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string p2, "__clearResource"

    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_26

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1a

    .line 15
    iget-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 23
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 26
    goto :goto_33

    .line 27
    :cond_1a
    iget-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 35
    invoke-virtual {p1, p3}, Lcom/miui/maml/ResourceManager;->clear(Ljava/lang/String;)V

    .line 38
    goto :goto_33

    .line 39
    :cond_26
    const-string p2, "__requestUpdate"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_33

    .line 47
    iget-object p1, p0, Lcom/miui/maml/SystemCommandListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 52
    :cond_33
    :goto_33
    return-void
.end method
