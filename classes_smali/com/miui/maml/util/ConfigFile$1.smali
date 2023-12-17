.class Lcom/miui/maml/util/ConfigFile$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile;->loadDefaultSettings(Lorg/w3c/dom/Element;)V
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
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/util/ConfigFile$1$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/util/ConfigFile$1$1;-><init>(Lcom/miui/maml/util/ConfigFile$1;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 10
    return-void
.end method
