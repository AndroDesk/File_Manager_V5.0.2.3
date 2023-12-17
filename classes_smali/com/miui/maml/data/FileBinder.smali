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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 14
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    if-nez p1, :cond_a

    .line 3
    const-string p1, "FileBinder"

    .line 5
    const-string v0, "FileBinder node is null"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    const-string v0, "filter"

    .line 13
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1c

    .line 27
    const/4 v0, 0x0

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    const-string v1, ","

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    :goto_22
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "dirExp"

    .line 43
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    .line 53
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    .line 56
    move-result-object v2

    .line 57
    const-string v3, "dir"

    .line 59
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v1, v2, v3, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 66
    iput-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 68
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_66

    .line 76
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 85
    const-string v3, ".count"

    .line 87
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 94
    move-result-object v2

    .line 95
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 97
    const/4 v3, 0x1

    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 101
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 103
    :cond_66
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 106
    return-void
.end method

.method private updateVariables()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    array-length v0, v0

    .line 8
    :goto_7
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_30

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/data/FileBinder$Variable;

    .line 26
    iget-object v3, v2, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    .line 28
    if-nez v3, :cond_1e

    .line 30
    goto :goto_d

    .line 31
    :cond_1e
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 34
    move-result-wide v3

    .line 35
    double-to-int v3, v3

    .line 36
    if-nez v0, :cond_27

    .line 38
    const/4 v3, 0x0

    .line 39
    goto :goto_2c

    .line 40
    :cond_27
    iget-object v4, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 42
    rem-int/2addr v3, v0

    .line 43
    aget-object v3, v4, v3

    .line 45
    :goto_2c
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 48
    goto :goto_d

    .line 49
    :cond_30
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/miui/maml/data/FileBinder$Variable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public init()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->refresh()V

    .line 7
    return-void
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;
    .registers 4

    .line 2
    new-instance v0, Lcom/miui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 4
    new-instance v0, Ljava/io/File;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 8
    invoke-virtual {v1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 17
    if-nez v1, :cond_17

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_20

    .line 24
    :cond_17
    new-instance v2, Lcom/miui/maml/util/FilenameExtFilter;

    .line 26
    invoke-direct {v2, v1}, Lcom/miui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    :goto_20
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 35
    if-nez v0, :cond_26

    .line 37
    const/4 v0, 0x0

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    array-length v0, v0

    .line 40
    :goto_27
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 42
    if-eqz v1, :cond_2f

    .line 44
    int-to-double v2, v0

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 48
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v2, "file count: "

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    const-string v1, "FileBinder"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    .line 73
    return-void
.end method

.method public tick()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    .line 7
    return-void
.end method
