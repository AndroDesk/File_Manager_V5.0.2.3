.class public Lcom/android/fileexplorer/apptag/ContentTagHelper;
.super Ljava/lang/Object;
.source "ContentTagHelper.java"


# static fields
.field private static volatile sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/fileexplorer/dao/file/ContentTag;",
            ">;"
        }
    .end annotation
.end field

.field private mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

.field private mContentTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/ContentTag;",
            ">;"
        }
    .end annotation
.end field

.field private mInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    new-instance v0, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;-><init>(Lcom/android/fileexplorer/apptag/ContentTagHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method private calculateContentTag(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/ContentTag;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    :goto_39
    if-ge v3, v4, :cond_b

    aget-object v5, v1, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_44

    goto :goto_67

    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    goto :goto_67

    :cond_59
    new-instance v6, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-direct {v6}, Lcom/android/fileexplorer/dao/file/ContentTag;-><init>()V

    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/dao/file/ContentTag;->setTagName(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_6a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_8d
    return-object p1

    :cond_8e
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/apptag/ContentTagHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    if-nez v1, :cond_18

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    if-nez v1, :cond_13

    new-instance v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;

    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/ContentTagHelper;-><init>()V

    sput-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    :cond_18
    :goto_18
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized deleteAll()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/ContentTag;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateContentTag(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/apptag/FileItemAppGroup;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->calculateContentTag(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->deleteAll()V

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
