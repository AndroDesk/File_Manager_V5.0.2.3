.class public abstract Lcom/miui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/VariableBinder$Variable;,
        Lcom/miui/maml/data/VariableBinder$TypedValue;
    }
.end annotation


# instance fields
.field private mDependency:Ljava/lang/String;

.field public mFinished:Z

.field public mName:Ljava/lang/String;

.field public mPaused:Z

.field public mQueryAtStart:Z

.field private mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mTrigger:Lcom/miui/maml/CommandTrigger;

.field public mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/VariableBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 14
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 16
    if-eqz p1, :cond_38

    .line 18
    const-string p2, "name"

    .line 20
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 26
    const-string p2, "dependency"

    .line 28
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    .line 34
    const-string p2, "queryAtStart"

    .line 36
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 40
    const-string v1, "false"

    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    move-result p2

    .line 46
    xor-int/2addr p2, v0

    .line 47
    iput-boolean p2, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 49
    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 51
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 57
    :cond_38
    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableBinderVisitor;->visit(Lcom/miui/maml/data/VariableBinder;)V

    .line 4
    return-void
.end method

.method public addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 11
    return-void
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 4
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 6
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1d

    .line 23
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    .line 30
    :cond_1d
    return-void
.end method

.method public loadVariables(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/VariableBinder$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/miui/maml/data/VariableBinder$1;-><init>(Lcom/miui/maml/data/VariableBinder;)V

    .line 6
    const-string v1, "Variable"

    .line 8
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 11
    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onUpdateComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 10
    if-eqz v0, :cond_1a

    .line 12
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1a

    .line 20
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 22
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 24
    invoke-interface {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 32
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 11
    return-void
.end method

.method public refresh()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 11
    return-void
.end method

.method public setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 3
    return-void
.end method

.method public startQuery()V
    .registers 1

    return-void
.end method

.method public tick()V
    .registers 1

    return-void
.end method
