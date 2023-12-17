.class Lcom/miui/maml/util/ConfigFile$4;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/ConfigFile$OnLoadElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/util/ConfigFile;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/ConfigFile;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public OnLoadElement(Lorg/w3c/dom/Element;)V
    .registers 8

    .line 1
    if-eqz p1, :cond_1f

    .line 3
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$4;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 5
    new-instance v1, Lcom/miui/maml/util/ConfigFile$Gadget;

    .line 7
    const-string v2, "path"

    .line 9
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    const-string v3, "x"

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 19
    move-result v3

    .line 20
    const-string v5, "y"

    .line 22
    invoke-static {p1, v5, v4}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 25
    move-result p1

    .line 26
    invoke-direct {v1, v2, v3, p1}, Lcom/miui/maml/util/ConfigFile$Gadget;-><init>(Ljava/lang/String;II)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/miui/maml/util/ConfigFile;->putGadget(Lcom/miui/maml/util/ConfigFile$Gadget;)V

    .line 32
    :cond_1f
    return-void
.end method
