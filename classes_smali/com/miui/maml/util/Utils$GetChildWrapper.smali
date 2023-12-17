.class public Lcom/miui/maml/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 6
    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lcom/miui/maml/util/Utils$GetChildWrapper;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$GetChildWrapper;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 5
    invoke-static {v1, p1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lcom/miui/maml/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 12
    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 3
    return-object v0
.end method
