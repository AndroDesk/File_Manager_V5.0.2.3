.class public Lcom/miui/maml/data/FileBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "FileBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lcom/miui/maml/data/IndexedVariable;

.field public mDirFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/data/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    if-nez p1, :cond_a

    const-string p1, "FileBinder"

    const-string v0, "FileBinder node is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v0, "filter"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x0

    goto :goto_22

    :cond_1c
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "dirExp"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const-string v3, "dir"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    iput-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    const-string v3, ".count"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_66
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private updateVariables()V
    .registers 6

    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/data/FileBinder$Variable;

    iget-object v3, v2, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    if-nez v3, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int v3, v3

    if-nez v0, :cond_27

    const/4 v3, 0x0

    goto :goto_2c

    :cond_27
    iget-object v4, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int/2addr v3, v0

    aget-object v3, v4, v3

    :goto_2c
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_d

    :cond_30
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/miui/maml/data/FileBinder$Variable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->refresh()V

    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;
    .registers 4

    new-instance v0, Lcom/miui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .registers 5

    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_17
    new-instance v2, Lcom/miui/maml/util/FilenameExtFilter;

    invoke-direct {v2, v1}, Lcom/miui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    :goto_20
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    array-length v0, v0

    :goto_27
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v1, :cond_2f

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    return-void
.end method

.method public tick()V
    .registers 1

    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    return-void
.end method
