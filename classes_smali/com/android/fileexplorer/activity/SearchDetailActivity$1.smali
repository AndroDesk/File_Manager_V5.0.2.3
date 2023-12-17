.class Lcom/android/fileexplorer/activity/SearchDetailActivity$1;
.super Ljava/lang/Object;
.source "SearchDetailActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/SearchDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/SearchDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 18

    move-object/from16 v0, p0

    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v9, 0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_52

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4a

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    :cond_4a
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_28

    :cond_52
    const-string v2, "searchresult"

    const-string v9, "start category"

    invoke-static {v2, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_100

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/fileexplorer/dao/file/FileItem;

    sget-object v15, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    move-object/from16 p1, v8

    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$000(Lcom/android/fileexplorer/activity/SearchDetailActivity;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v15, v8

    const/4 v15, 0x1

    if-eq v8, v15, :cond_de

    const/4 v15, 0x2

    if-eq v8, v15, :cond_bf

    const/4 v15, 0x3

    if-eq v8, v15, :cond_9c

    goto :goto_fc

    :cond_9c
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v8

    if-nez v8, :cond_a3

    goto :goto_fc

    :cond_a3
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$200(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_af
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bb

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_bb
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_bf
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v8

    if-nez v8, :cond_c6

    goto :goto_fc

    :cond_c6
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_d2
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$200(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_de
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v8

    if-nez v8, :cond_e5

    goto :goto_fc

    :cond_e5
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_f1
    iget-object v8, v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$200(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    :goto_fc
    move-object/from16 v8, p1

    goto/16 :goto_76

    :cond_100
    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, "type"

    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v10, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v11, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12b

    new-instance v7, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v7, v12, v1, v9}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_139

    new-instance v7, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v7, v13, v1, v10}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_139
    const-string v1, "end category"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/fileexplorer/search/SearchResultContent;

    invoke-direct {v1, v3, v6, v4, v5}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    return-object v1
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

    if-nez v8, :cond_50

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_26
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/fileexplorer/search/SearchResult;

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48

    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_48
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_26

    :cond_50
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v9, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const-string v10, "type"

    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v9, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v9, v5, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_74
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    move-result v11

    if-nez v11, :cond_87

    goto :goto_74

    :cond_87
    iget-object v11, p0, Lcom/android/fileexplorer/activity/SearchDetailActivity$1;->this$0:Lcom/android/fileexplorer/activity/SearchDetailActivity;

    invoke-static {v11, v10, v2}, Lcom/android/fileexplorer/activity/SearchDetailActivity;->access$100(Lcom/android/fileexplorer/activity/SearchDetailActivity;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_74

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_93
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a1

    new-instance v2, Lcom/android/fileexplorer/search/SearchResult;

    invoke-direct {v2, v9, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchResultContent;->setTagResults(Ljava/util/List;)V

    return-object v0
.end method
