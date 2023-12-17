.class Lcom/miui/maml/data/FileBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/FileBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field public mIndex:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 4
    const-string v0, "index"

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    .line 16
    if-nez p1, :cond_18

    .line 18
    const-string p1, "Variable"

    .line 20
    const-string p2, "fail to load file index expression"

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_18
    return-void
.end method


# virtual methods
.method public parseType(Ljava/lang/String;)I
    .registers 2

    const/4 p1, 0x2

    return p1
.end method
