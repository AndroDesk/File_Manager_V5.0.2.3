.class public abstract Lcom/miui/maml/ObjectFactory$ActionCommandFactory;
.super Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionCommandFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/maml/ObjectFactory$ObjectFactoryBase<",
        "Lcom/miui/maml/ObjectFactory$ActionCommandFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ActionCommand"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "ActionCommand"

    .line 3
    invoke-direct {p0, v0}, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->doCreate(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lcom/miui/maml/ObjectFactory;

    .line 10
    if-nez v0, :cond_d

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_13

    .line 14
    :cond_d
    check-cast v0, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    .line 19
    move-result-object p1

    .line 20
    :goto_13
    return-object p1
.end method

.method public abstract doCreate(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;
.end method
