.class public Lcom/miui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/VariableBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 11
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    if-eqz p1, :cond_11

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 18
    :cond_11
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;
    .registers 5

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ContentProviderBinder"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_12

    .line 13
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 18
    goto :goto_4b

    .line 19
    :cond_12
    const-string v1, "SensorBinder"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_20

    .line 27
    new-instance v0, Lcom/miui/maml/data/SensorBinder;

    .line 29
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 32
    goto :goto_4b

    .line 33
    :cond_20
    const-string v1, "BroadcastBinder"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2e

    .line 41
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder;

    .line 43
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 46
    goto :goto_4b

    .line 47
    :cond_2e
    const-string v1, "FileBinder"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3c

    .line 55
    new-instance v0, Lcom/miui/maml/data/FileBinder;

    .line 57
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 60
    goto :goto_4b

    .line 61
    :cond_3c
    const-string v1, "SettingsBinder"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4a

    .line 69
    new-instance v0, Lcom/miui/maml/data/SettingsBinder;

    .line 71
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SettingsBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 74
    goto :goto_4b

    .line 75
    :cond_4a
    const/4 v0, 0x0

    .line 76
    :goto_4b
    if-eqz v0, :cond_50

    .line 78
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/VariableBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 81
    :cond_50
    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    return-void

    .line 7
    :cond_6
    const-string p1, "VariableBinderManager"

    .line 9
    const-string p2, "node is null"

    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2a

    .line 12
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_27

    .line 23
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/w3c/dom/Element;

    .line 29
    invoke-static {v1, p2, p0}, Lcom/miui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_27

    .line 35
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_5

    .line 43
    :cond_2a
    return-void
.end method


# virtual methods
.method public final acceptVisitor(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1, p1}, Lcom/miui/maml/data/VariableBinder;->accept(Lcom/miui/maml/data/VariableBinderVisitor;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 4

    .line 3
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/VariableBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 5
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 6
    iget-object p1, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/miui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {p1, v0}, Lcom/miui/maml/data/ContentProviderBinder$Builder;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-object p1
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 5

    .line 2
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1d

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->getName()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_6

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_d

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_d

    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    .line 45
    goto :goto_d

    .line 46
    :cond_2d
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public tick()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/data/VariableBinder;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/data/VariableBinder;->tick()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
