.class Lcom/android/fileexplorer/fragment/FileFragment$4;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->runLoadTask(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    const-string v0, "FileFragment"

    .line 3
    const-string v1, "mLoadOwnerTask start"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 10
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildSizeAndTimeInfo(Ljava/util/List;Landroid/content/Context;)Z

    .line 19
    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 20
    goto :goto_19

    .line 21
    :catch_14
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_19
    const-string v1, "FileFragment"

    .line 28
    const-string v2, "build size info end"

    .line 30
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 35
    iget-object v1, v1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 37
    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItemVO(Ljava/util/List;)Ljava/util/HashSet;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 48
    iget-object v3, v3, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 50
    monitor-enter v3

    .line 51
    :try_start_32
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 53
    iget-object v4, v4, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v4

    .line 59
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_6b

    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    .line 71
    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_4f

    .line 79
    goto :goto_3a

    .line 80
    :cond_4f
    iget-boolean v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    .line 82
    if-eqz v6, :cond_5a

    .line 84
    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 86
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 88
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5a
    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    .line 93
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 95
    iget-object v5, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 104
    move-result v5

    .line 105
    iput-boolean v5, v6, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 107
    goto :goto_3a

    .line 108
    :cond_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_e7

    .line 109
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 111
    iget v1, v1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    .line 113
    const/4 v3, 0x2

    .line 114
    if-ne v1, v3, :cond_de

    .line 116
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_d5

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v2

    .line 137
    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_9a

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 149
    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 151
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_88

    .line 155
    :cond_9a
    :try_start_9a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 169
    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    .line 171
    invoke-virtual {v3}, Lcom/android/fileexplorer/service/DirParseSDK;->getService()Lcom/android/fileexplorer/service/IDirParse;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_be

    .line 181
    if-eqz v3, :cond_be

    .line 183
    sget-object v4, Lcom/android/fileexplorer/fragment/AbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 185
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_c0

    .line 191
    :cond_be
    if-eqz v0, :cond_e6

    .line 193
    :cond_c0
    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 195
    new-instance v2, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;

    .line 197
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 199
    invoke-direct {v2, v4}, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 202
    invoke-direct {v0, v2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 205
    invoke-interface {v3, v1, v0}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_cf} :catch_d0

    .line 208
    goto :goto_e6

    .line 209
    :catch_d0
    move-exception v0

    .line 210
    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 213
    goto :goto_e6

    .line 214
    :cond_d5
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$4$1;

    .line 216
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$4$1;-><init>(Lcom/android/fileexplorer/fragment/FileFragment$4;)V

    .line 219
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 222
    goto :goto_e6

    .line 223
    :cond_de
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$4$2;

    .line 225
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$4$2;-><init>(Lcom/android/fileexplorer/fragment/FileFragment$4;)V

    .line 228
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 231
    :cond_e6
    :goto_e6
    return-void

    .line 232
    :catchall_e7
    move-exception v0

    .line 233
    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    .line 234
    throw v0
.end method
