.class Lcom/miui/maml/util/ConfigFile$1$1;
.super Ljava/lang/Object;
.source "ConfigFile.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/ConfigFile$1;->onChild(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/miui/maml/util/ConfigFile$1;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/ConfigFile$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "StringInput"

    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    const-string v3, "default"

    .line 19
    if-eqz v2, :cond_21

    .line 21
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 23
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 25
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto/16 :goto_9a

    .line 34
    :cond_21
    const-string v2, "CheckBox"

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_40

    .line 42
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 44
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 46
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const-string v2, "1"

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3a

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    const-string v2, "0"

    .line 61
    :goto_3c
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    goto :goto_9a

    .line 65
    :cond_40
    const-string v2, "NumberInput"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v2

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v2, :cond_5a

    .line 74
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 77
    move-result p1

    .line 78
    float-to-double v2, p1

    .line 79
    iget-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 81
    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 83
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    goto :goto_9a

    .line 91
    :cond_5a
    const-string v2, "StringChoice"

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_6e

    .line 99
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 101
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 103
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/miui/maml/util/ConfigFile;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    goto :goto_9a

    .line 111
    :cond_6e
    const-string v2, "NumberChoice"

    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_87

    .line 119
    invoke-static {p1, v3, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 122
    move-result p1

    .line 123
    float-to-double v2, p1

    .line 124
    iget-object p1, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 126
    iget-object p1, p1, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 128
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v1, v0}, Lcom/miui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    goto :goto_9a

    .line 136
    :cond_87
    const-string v1, "AppPicker"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_9a

    .line 144
    iget-object v0, p0, Lcom/miui/maml/util/ConfigFile$1$1;->this$1:Lcom/miui/maml/util/ConfigFile$1;

    .line 146
    iget-object v0, v0, Lcom/miui/maml/util/ConfigFile$1;->this$0:Lcom/miui/maml/util/ConfigFile;

    .line 148
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Lcom/miui/maml/util/ConfigFile;->putTask(Lcom/miui/maml/util/Task;)V

    .line 155
    :cond_9a
    :goto_9a
    return-void
.end method
