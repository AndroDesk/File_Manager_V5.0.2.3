.class public Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;
.super Ljava/lang/Object;
.source "SearchPostOperation.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;


# instance fields
.field private mType:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 8
    return-void
.end method

.method private appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getAppName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method private tagMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1a

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileTag1()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method


# virtual methods
.method public postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;
    .registers 16

    .line 1
    const-class v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getMagic()J

    .line 15
    move-result-wide v3

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const-wide/16 v7, 0x1

    .line 31
    cmp-long v7, v3, v7

    .line 33
    if-nez v7, :cond_44

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_44

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v7

    .line 49
    check-cast v7, Lcom/android/fileexplorer/search/SearchResult;

    .line 51
    invoke-virtual {v7}, Lcom/android/fileexplorer/search/SearchResult;->getType()Ljava/lang/Class;

    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_26

    .line 61
    invoke-virtual {v7}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    goto :goto_26

    .line 69
    :cond_44
    new-instance v1, Landroid/os/Bundle;

    .line 71
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance v7, Landroid/os/Bundle;

    .line 76
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 79
    new-instance v8, Landroid/os/Bundle;

    .line 81
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 84
    new-instance v9, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v10, Ljava/util/ArrayList;

    .line 91
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v6

    .line 98
    :cond_61
    :goto_61
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_d6

    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v11

    .line 108
    check-cast v11, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 110
    sget-object v12, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation$1;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 112
    iget-object v13, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 114
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 117
    move-result v13

    .line 118
    aget v12, v12, v13

    .line 120
    const/4 v13, 0x1

    .line 121
    if-eq v12, v13, :cond_bb

    .line 123
    const/4 v13, 0x2

    .line 124
    if-eq v12, v13, :cond_a0

    .line 126
    const/4 v13, 0x3

    .line 127
    if-eq v12, v13, :cond_81

    .line 129
    goto :goto_61

    .line 130
    :cond_81
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_88

    .line 136
    goto :goto_61

    .line 137
    :cond_88
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 140
    move-result v12

    .line 141
    if-eqz v12, :cond_92

    .line 143
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_61

    .line 147
    :cond_92
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 150
    move-result v12

    .line 151
    if-eqz v12, :cond_9c

    .line 153
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    goto :goto_61

    .line 157
    :cond_9c
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_61

    .line 161
    :cond_a0
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 164
    move-result v12

    .line 165
    if-nez v12, :cond_a7

    .line 167
    goto :goto_61

    .line 168
    :cond_a7
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 171
    move-result v12

    .line 172
    if-eqz v12, :cond_b1

    .line 174
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_61

    .line 178
    :cond_b1
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_61

    .line 184
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_61

    .line 188
    :cond_bb
    invoke-static {v11}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 191
    move-result v12

    .line 192
    if-nez v12, :cond_c2

    .line 194
    goto :goto_61

    .line 195
    :cond_c2
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 198
    move-result v12

    .line 199
    if-eqz v12, :cond_cc

    .line 201
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    goto :goto_61

    .line 205
    :cond_cc
    invoke-direct {p0, v11, v5}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->appNameMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_61

    .line 211
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    goto :goto_61

    .line 215
    :cond_d6
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 217
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 220
    move-result v5

    .line 221
    const-string v6, "type"

    .line 223
    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 228
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 231
    move-result v5

    .line 232
    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 235
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 237
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 240
    move-result v5

    .line 241
    invoke-virtual {v8, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_101

    .line 250
    new-instance v5, Lcom/android/fileexplorer/search/SearchResult;

    .line 252
    invoke-direct {v5, v9, v0, v1}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_101
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 261
    move-result v1

    .line 262
    if-nez v1, :cond_10f

    .line 264
    new-instance v1, Lcom/android/fileexplorer/search/SearchResult;

    .line 266
    invoke-direct {v1, v10, v0, v7}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_10f
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 274
    invoke-direct {v0, v2, p1, v3, v4}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    .line 277
    return-object v0
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
    if-nez v8, :cond_44

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
    if-eqz v9, :cond_44

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
    if-eqz v10, :cond_26

    .line 61
    invoke-virtual {v9}, Lcom/android/fileexplorer/search/SearchResult;->getResult()Ljava/util/List;

    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 68
    goto :goto_26

    .line 69
    :cond_44
    new-instance v8, Landroid/os/Bundle;

    .line 71
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 74
    sget-object v9, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 76
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 79
    move-result v9

    .line 80
    const-string v10, "type"

    .line 82
    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    .line 87
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v5

    .line 94
    :cond_5d
    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v10

    .line 98
    if-eqz v10, :cond_7a

    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 106
    invoke-static {v10}, Lcom/android/fileexplorer/apptag/FileUtils;->isFileExists(Lcom/android/fileexplorer/dao/file/FileItem;)Z

    .line 109
    move-result v11

    .line 110
    if-nez v11, :cond_70

    .line 112
    goto :goto_5d

    .line 113
    :cond_70
    invoke-direct {p0, v10, v2}, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->keyMatch(Lcom/android/fileexplorer/dao/file/FileItem;Ljava/lang/String;)Z

    .line 116
    move-result v11

    .line 117
    if-eqz v11, :cond_5d

    .line 119
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_5d

    .line 123
    :cond_7a
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_88

    .line 129
    new-instance v2, Lcom/android/fileexplorer/search/SearchResult;

    .line 131
    invoke-direct {v2, v9, v0, v8}, Lcom/android/fileexplorer/search/SearchResult;-><init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_88
    new-instance v0, Lcom/android/fileexplorer/search/SearchResultContent;

    .line 139
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchTagText()Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    move-object v2, v0

    .line 144
    invoke-direct/range {v2 .. v7}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/search/SearchResultContent;->setTagResults(Ljava/util/List;)V

    .line 150
    return-object v0
.end method

.method public setSearchType(Lcom/android/fileexplorer/adapter/search/SearchType;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/SearchPostOperation;->mType:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 3
    return-void
.end method
