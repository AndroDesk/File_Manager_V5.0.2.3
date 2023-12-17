.class public Lcom/miui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableUpdaterManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 6
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    return-void
.end method

.method public final getContext()Lcom/miui/maml/ScreenContext;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableUpdater;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lcom/miui/maml/data/VariableUpdaterManager;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableUpdaterManager;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
