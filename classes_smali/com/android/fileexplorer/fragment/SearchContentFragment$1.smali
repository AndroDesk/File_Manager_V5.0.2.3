.class Lcom/android/fileexplorer/fragment/SearchContentFragment$1;
.super Ljava/lang/Object;
.source "SearchContentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/SearchContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchContentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    .line 17
    move-result-wide v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object v7

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-wide/16 v9, 0x1

    .line 33
    cmp-long v9, v4, v9

    .line 35
    if-nez v9, :cond_52

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_52

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Lcom/android/fileexplorer/search/SearchResult;

    .line 53
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v10

    .line 61
    if-nez v10, :cond_4a

    .line 63
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 66
    move-result-object v10

    .line 67
    const-class v11, Lcom/android/cloud/bean/CloudFileItem;

    .line 69
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_28

    .line 75
    :cond_4a
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    goto :goto_28

    .line 83
    :cond_52
    const-string v2, "searchresult"

    .line 85
    const-string v9, "start category"

    .line 87
    invoke-static {v2, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v9, Landroid/os/Bundle;

    .line 92
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 95
    new-instance v10, Landroid/os/Bundle;

    .line 97
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 100
    new-instance v11, Landroid/os/Bundle;

    .line 102
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 105
    new-instance v12, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v13, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 118
    move-result-object v8

    .line 119
    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    move-result v14

    .line 123
    if-eqz v14, :cond_100

    .line 125
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v14

    .line 129
    check-cast v14, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 131
    sget-object v15, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 133
    move-object/from16 p1, v8

    .line 135
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 137
    invoke-static {v8}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchContentFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 144
    move-result v8

    .line 145
    aget v8, v15, v8

    .line 147
    const/4 v15, 0x1

    .line 148
    if-eq v8, v15, :cond_de

    .line 150
    const/4 v15, 0x2

    .line 151
    if-eq v8, v15, :cond_bf

    .line 153
    const/4 v15, 0x3

    .line 154
    if-eq v8, v15, :cond_9c

    .line 156
    goto :goto_fc

    .line 157
    :cond_9c
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 160
    move-result v8

    .line 161
    if-nez v8, :cond_a3

    .line 163
    goto :goto_fc

    .line 164
    :cond_a3
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 166
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 169
    move-result v8

    .line 170
    if-eqz v8, :cond_af

    .line 172
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_fc

    .line 176
    :cond_af
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 178
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_bb

    .line 184
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_fc

    .line 188
    :cond_bb
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_fc

    .line 192
    :cond_bf
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 195
    move-result v8

    .line 196
    if-nez v8, :cond_c6

    .line 198
    goto :goto_fc

    .line 199
    :cond_c6
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 201
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 204
    move-result v8

    .line 205
    if-eqz v8, :cond_d2

    .line 207
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    goto :goto_fc

    .line 211
    :cond_d2
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 213
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 216
    move-result v8

    .line 217
    if-eqz v8, :cond_fc

    .line 219
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_fc

    .line 223
    :cond_de
    invoke-static {v14}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 226
    move-result v8

    .line 227
    if-nez v8, :cond_e5

    .line 229
    goto :goto_fc

    .line 230
    :cond_e5
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 232
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_f1

    .line 238
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    goto :goto_fc

    .line 242
    :cond_f1
    iget-object v8, v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 244
    invoke-static {v8, v14, v7}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 247
    move-result v8

    .line 248
    if-eqz v8, :cond_fc

    .line 250
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_fc
    :goto_fc
    move-object/from16 v8, p1

    .line 255
    goto/16 :goto_76

    .line 257
    :cond_100
    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 259
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 262
    move-result v7

    .line 263
    const-string v8, "type"

    .line 265
    invoke-virtual {v9, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 268
    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 270
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 273
    move-result v7

    .line 274
    invoke-virtual {v10, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 277
    sget-object v7, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 279
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 282
    move-result v7

    .line 283
    invoke-virtual {v11, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 289
    move-result v7

    .line 290
    if-nez v7, :cond_12b

    .line 292
    new-instance v7, Lcom/android/fileexplorer/search/SearchResult;

    .line 294
    invoke-direct {v7, v12, v1, v9}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_12b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 303
    move-result v7

    .line 304
    if-nez v7, :cond_139

    .line 306
    new-instance v7, Lcom/android/fileexplorer/search/SearchResult;

    .line 308
    invoke-direct {v7, v13, v1, v10}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_139
    const-string v1, "end category"

    .line 316
    invoke-static {v2, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 321
    invoke-direct {v1, v3, v6, v4, v5}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    .line 324
    return-object v1
.end method

.method public postProcessTagSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 14

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    .line 15
    move-result-wide v6

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const-wide/16 v8, 0x1

    .line 31
    cmp-long v8, v6, v8

    .line 33
    if-nez v8, :cond_50

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v8

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_50

    .line 45
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v9

    .line 49
    check-cast v9, Lcom/android/fileexplorer/search/SearchResult;

    .line 51
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v10

    .line 59
    if-nez v10, :cond_48

    .line 61
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 64
    move-result-object v10

    .line 65
    const-class v11, Lcom/android/cloud/bean/CloudFileItem;

    .line 67
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_26

    .line 73
    :cond_48
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    goto :goto_26

    .line 81
    :cond_50
    new-instance v8, Landroid/os/Bundle;

    .line 83
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 86
    sget-object v9, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 88
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 91
    move-result v9

    .line 92
    const-string v10, "type"

    .line 94
    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    new-instance v9, Lcom/android/fileexplorer/search/SearchResult;

    .line 102
    invoke-direct {v9, v5, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 105
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v9, Ljava/util/ArrayList;

    .line 110
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object v5

    .line 117
    :cond_74
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_93

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 129
    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 132
    move-result v11

    .line 133
    if-nez v11, :cond_87

    .line 135
    goto :goto_74

    .line 136
    :cond_87
    iget-object v11, p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchContentFragment;

    .line 138
    invoke-static {v11, v10, v2}, Lcom/android/fileexplorer/fragment/SearchContentFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchContentFragment;Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_74

    .line 144
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_74

    .line 148
    :cond_93
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_a1

    .line 154
    new-instance v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 156
    invoke-direct {v2, v9, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_a1
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 164
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    move-object v2, v0

    .line 169
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchResultContent;->setTagResults(Ljava/util/List;)V

    .line 175
    return-object v0
.end method
