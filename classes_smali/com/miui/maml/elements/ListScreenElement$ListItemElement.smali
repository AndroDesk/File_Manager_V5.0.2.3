.class Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemElement"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Item"


# instance fields
.field private mDataIndex:I

.field private mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

.field public mNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    .line 9
    const-string p1, "divider"

    .line 11
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    move-result-object p1

    .line 15
    instance-of p2, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 17
    if-eqz p2, :cond_1f

    .line 19
    move-object p2, p1

    .line 20
    check-cast p2, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 32
    :cond_1f
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 36
    return-void
.end method


# virtual methods
.method public getDataIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 3
    return v0
.end method

.method public setDataIndex(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    if-gtz p1, :cond_d

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 18
    :cond_11
    :goto_11
    return-void
.end method
