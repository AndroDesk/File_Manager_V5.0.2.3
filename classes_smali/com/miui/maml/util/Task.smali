.class public Lcom/miui/maml/util/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static TAG_ACTION:Ljava/lang/String; = "action"

.field public static TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static TAG_CLASS:Ljava/lang/String; = "class"

.field public static TAG_ID:Ljava/lang/String; = "id"

.field public static TAG_NAME:Ljava/lang/String; = "name"

.field public static TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static TAG_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Lcom/miui/maml/util/Task;

    .line 7
    invoke-direct {v0}, Lcom/miui/maml/util/Task;-><init>()V

    .line 10
    const-string v1, "id"

    .line 12
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    .line 18
    const-string v1, "action"

    .line 20
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 26
    const-string v1, "type"

    .line 28
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    .line 34
    const-string v1, "category"

    .line 36
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    .line 42
    const-string v1, "package"

    .line 44
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 50
    const-string v1, "class"

    .line 52
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    .line 58
    const-string v1, "name"

    .line 60
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    iput-object p0, v0, Lcom/miui/maml/util/Task;->name:Ljava/lang/String;

    .line 66
    return-object v0
.end method
