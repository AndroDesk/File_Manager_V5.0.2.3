.class abstract Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;
.super Ljava/lang/Object;
.source "GenericGrouper.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/strategy/group/IGrouper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/apptag/strategy/group/IGrouper<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;TK;)TV;"
        }
    .end annotation
.end method

.method public findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final group(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3e

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->onPreGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2b

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_35
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3d
    return-object v0

    :cond_3e
    :goto_3e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final group(Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;Z)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_48

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_48

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->onPreGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2b

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_2b
    if-eqz p2, :cond_32

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->findSameGroupFromLast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_36

    :cond_32
    invoke-virtual {p0, v0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->findSameGroup(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_36
    if-eqz v1, :cond_3c

    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_43

    :cond_3c
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_43
    invoke-virtual {p0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/GenericGrouper;->setFileItemAppName(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17

    :cond_47
    return-object v0

    :cond_48
    :goto_48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public abstract makeNewFileGroup(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract onPreGroup(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract onSameGroup(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)V"
        }
    .end annotation
.end method

.method public setFileItemAppName(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)V"
        }
    .end annotation

    return-void
.end method
