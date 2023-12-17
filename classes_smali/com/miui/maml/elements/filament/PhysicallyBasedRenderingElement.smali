.class public Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "PhysicallyBasedRenderingElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Pbr"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V
    .registers 5

    return-void
.end method
