.class public Lcom/android/fileexplorer/model/MultiListTypeManager;
.super Ljava/lang/Object;
.source "MultiListTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiListTypeManager"

.field private static mInstance:Lcom/android/fileexplorer/model/MultiListTypeManager;


# instance fields
.field private mMultiListChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/model/MultiListTypeManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/MultiListTypeManager;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mInstance:Lcom/android/fileexplorer/model/MultiListTypeManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mInstance:Lcom/android/fileexplorer/model/MultiListTypeManager;

    return-object v0
.end method


# virtual methods
.method public addMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_e
    const-string p1, "MultiListTypeManager"

    const-string v0, "already contains, return"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onMultiListChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;

    invoke-interface {v1, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;->onMultiListChange(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
