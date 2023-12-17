.class public Lcom/android/fileexplorer/adapter/search/SearchDataContainer;
.super Ljava/lang/Object;
.source "SearchDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;,
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;,
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;,
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;,
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$SearchDataHolder;,
        Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;
    }
.end annotation


# static fields
.field private static final PROCESSED_RESULT:Ljava/lang/String; = "processed"

.field private static final RAW_RESULT:Ljava/lang/String; = "raw"

.field private static final TAG:Ljava/lang/String; = "SearchDataContainer"


# instance fields
.field private mDataContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;-><init>()V

    return-void
.end method

.method private addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    if-eqz p2, :cond_d

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V

    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$SearchDataHolder;->sInstance:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 3
    return-object v0
.end method

.method private register(ILcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;-><init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;)V

    .line 2
    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->setPostSearchOperation(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    .line 3
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    if-eqz p2, :cond_d

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;)V

    :cond_d
    return-void
.end method

.method private requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;I)V
    .registers 19

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    if-eqz v2, :cond_19

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    :cond_19
    return-void
.end method

.method private unregister(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->removePostSearchOperationAll()V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V
    .registers 3

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->addListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;I)V

    return-void
.end method

.method public cancel(Landroid/app/Activity;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    .line 15
    if-eqz p1, :cond_1a

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->cancel()V

    .line 20
    const-string p1, "SearchDataContainer"

    .line 22
    const-string v0, "cancel"

    .line 24
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public register(Landroid/app/Activity;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V
    .registers 4

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->register(ILcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;)V

    return-void
.end method

.method public removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;Landroid/app/Activity;)V
    .registers 3

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->removeListener(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;I)V

    return-void
.end method

.method public requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V
    .registers 18

    .line 3
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;I)V

    return-void
.end method

.method public requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V
    .registers 19

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->mDataContainers:Landroid/util/SparseArray;

    .line 4
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->hashCode()I

    .line 7
    move-result v2

    .line 8
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    .line 15
    if-eqz v2, :cond_1b

    .line 17
    const/4 v7, 0x1

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move-wide v5, p3

    .line 21
    move-object/from16 v8, p6

    .line 23
    move-object/from16 v9, p7

    .line 25
    invoke-virtual/range {v2 .. v9}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 28
    :cond_1b
    return-void
.end method

.method public unregister(Landroid/app/Activity;)V
    .registers 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->unregister(I)V

    return-void
.end method
