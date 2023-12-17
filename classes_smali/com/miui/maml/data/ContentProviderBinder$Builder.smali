.class public Lcom/miui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lcom/miui/maml/data/ContentProviderBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 6
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/miui/maml/data/Variables;)V
    .registers 7

    .line 1
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;

    .line 3
    invoke-direct {v0, p1, p2, p5}, Lcom/miui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 6
    iput-object p3, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 8
    iput p4, v0, Lcom/miui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 10
    iget-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 12
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/VariableBinder;->addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V

    .line 15
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/ContentProviderBinder;->createCountVar()V

    .line 8
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    iput-object p1, v0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    .line 3
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;->mBinder:Lcom/miui/maml/data/ContentProviderBinder;

    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mWhereFormatter:Lcom/miui/maml/util/TextFormatter;

    return-object p0
.end method
