.class public Lcom/miui/maml/elements/LayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/LayerScreenElement$LayerView;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Layer"


# instance fields
.field private mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p1, Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/miui/maml/elements/LayerScreenElement$LayerView;-><init>(Lcom/miui/maml/elements/LayerScreenElement;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement;->mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement;->mView:Lcom/miui/maml/elements/LayerScreenElement$LayerView;

    return-object v0
.end method
