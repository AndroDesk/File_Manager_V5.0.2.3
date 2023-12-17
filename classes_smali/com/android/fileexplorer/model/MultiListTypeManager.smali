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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/model/MultiListTypeManager;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mInstance:Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/MultiListTypeManager;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mInstance:Lcom/android/fileexplorer/model/MultiListTypeManager;

    .line 3
    return-object v0
.end method


# virtual methods
.method public addMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    const-string p1, "MultiListTypeManager"

    .line 17
    const-string v0, "already contains, return"

    .line 19
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_15
    return-void
.end method

.method public onMultiListChange(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;

    .line 19
    invoke-interface {v1, p1}, Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;->onMultiListChange(I)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public removeMultiListChangeListener(Lcom/android/fileexplorer/model/MultiListTypeManager$OnMultiListChangeListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/MultiListTypeManager;->mMultiListChangeListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method
