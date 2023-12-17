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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;-><init>(Lcom/android/fileexplorer/apptag/ContentTagHelper;)V

    .line 24
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    .line 26
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

    .line 1
    if-eqz p1, :cond_8e

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_6a

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v2, :cond_27

    .line 31
    invoke-virtual {v1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 38
    move-result v2

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    move v2, v3

    .line 41
    :goto_28
    iget-object v4, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_b

    .line 49
    iget-object v1, v1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;->groupTag1:Ljava/lang/String;

    .line 51
    const-string v4, ","

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    array-length v4, v1

    .line 58
    :goto_39
    if-ge v3, v4, :cond_b

    .line 60
    aget-object v5, v1, v3

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_44

    .line 68
    goto :goto_67

    .line 69
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_59

    .line 75
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 81
    invoke-virtual {v5}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    .line 84
    move-result v6

    .line 85
    add-int/2addr v6, v2

    .line 86
    invoke-virtual {v5, v6}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    .line 89
    goto :goto_67

    .line 90
    :cond_59
    new-instance v6, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 92
    invoke-direct {v6}, Lcom/android/fileexplorer/dao/file/ContentTag;-><init>()V

    .line 95
    invoke-virtual {v6, v5}, Lcom/android/fileexplorer/dao/file/ContentTag;->setTagName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v6, v2}, Lcom/android/fileexplorer/dao/file/ContentTag;->setFileCount(I)V

    .line 101
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_67
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_39

    .line 107
    :cond_6a
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 115
    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v1

    .line 120
    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_8d

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Lcom/android/fileexplorer/dao/file/ContentTag;

    .line 138
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_77

    .line 142
    :cond_8d
    return-object p1

    .line 143
    :cond_8e
    const/4 p1, 0x0

    .line 144
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 6
    if-nez v1, :cond_18

    .line 8
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 9
    :try_start_8
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 11
    if-nez v1, :cond_13

    .line 13
    new-instance v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 15
    invoke-direct {v1}, Lcom/android/fileexplorer/apptag/ContentTagHelper;-><init>()V

    .line 18
    sput-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 20
    :cond_13
    monitor-exit v0

    .line 21
    goto :goto_18

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    .line 24
    :try_start_17
    throw v1

    .line 25
    :cond_18
    :goto_18
    sget-object v1, Lcom/android/fileexplorer/apptag/ContentTagHelper;->sInstance:Lcom/android/fileexplorer/apptag/ContentTagHelper;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    monitor-exit v0

    .line 31
    throw v1
.end method


# virtual methods
.method public declared-synchronized deleteAll()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->deleteAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 16
    :cond_f
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized init()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_29

    .line 11
    new-instance v0, Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    .line 13
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    .line 18
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->loadAll()Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_29

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_29

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    .line 39
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 42
    :cond_29
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->calculateContentTag(Ljava/util/List;)Ljava/util/List;

    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->deleteAll()V

    .line 9
    if-eqz p1, :cond_1d

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mComparator:Ljava/util/Comparator;

    .line 20
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagDaoUtils:Lcom/android/fileexplorer/util/dao/ContentTagDaoUtils;

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper;->mContentTagList:Ljava/util/List;

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->insert(Ljava/lang/Iterable;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 30
    :cond_1d
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
.end method
