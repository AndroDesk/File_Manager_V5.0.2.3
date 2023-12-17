.class public Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;
.super Ljava/lang/Object;
.source "SearchPostOperation.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;


# instance fields
.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    return-void
.end method

.method private appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private tagMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method


# virtual methods
.method public postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 16

    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v7, 0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_44

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v7}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v7}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_26

    :cond_44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_61
    :goto_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/fileexplorer/dao/file/FileItem;

    sget-object v12, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation$1;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    iget-object v13, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x1

    if-eq v12, v13, :cond_bb

    const/4 v13, 0x2

    if-eq v12, v13, :cond_a0

    const/4 v13, 0x3

    if-eq v12, v13, :cond_81

    goto :goto_61

    :cond_81
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v12

    if-nez v12, :cond_88

    goto :goto_61

    :cond_88
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_92

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_92
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9c

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_9c
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_a0
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v12

    if-nez v12, :cond_a7

    goto :goto_61

    :cond_a7
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_b1
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_bb
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v12

    if-nez v12, :cond_c2

    goto :goto_61

    :cond_c2
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_cc

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_cc
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_61

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_d6
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "type"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_101

    new-instance v5, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v5, v9, v0, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_101
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10f

    new-instance v1, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v1, v10, v0, v7}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10f
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    return-object v0
.end method

.method public postProcessTagSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 14

    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_44

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_26

    :cond_44
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v9, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const-string v10, "type"

    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5d
    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v11

    if-nez v11, :cond_70

    goto :goto_5d

    :cond_70
    invoke-direct {p0, v10, v2}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_7a
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_88

    new-instance v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v2, v9, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchResultContent;->setTagResults(Ljava/util/List;)V

    return-object v0
.end method

.method public setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    return-void
.end method
