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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "FileFragment"

    const-string v1, "mLoadOwnerTask start"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->buildSizeAndTimeInfo(Ljava/util/List;Landroid/content/Context;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_19

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_19
    const-string v1, "FileFragment"

    const-string v2, "build size info end"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileItemVO(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_32
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v4, v4, Lcom/android/fileexplorer/fragment/FileFragment;->mFileItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;

    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_3a

    :cond_4f
    iget-boolean v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->isDirectory:Z

    if-eqz v6, :cond_5a

    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget-object v6, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->info:Lcom/android/fileexplorer/mirror/model/BaseItemInfo;

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v5, v5, Lcom/android/fileexplorer/view/fileitem/FileListItemVO;->filePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v6, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    goto :goto_3a

    :cond_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_32 .. :try_end_6c} :catchall_e7

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget v1, v1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_de

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_9a
    :try_start_9a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v3, v3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mParseSdk:Lcom/android/fileexplorer/service/DirParseSDK;

    invoke-virtual {v3}, Lcom/android/fileexplorer/service/DirParseSDK;->getService()Lcom/android/fileexplorer/service/IDirParse;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_be

    if-eqz v3, :cond_be

    sget-object v4, Lcom/android/fileexplorer/fragment/AbsFileFragment;->DEFAULT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    :cond_be
    if-eqz v0, :cond_e6

    :cond_c0
    new-instance v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    new-instance v2, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/FileFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-direct {v2, v4}, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    invoke-direct {v0, v2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;-><init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    invoke-interface {v3, v1, v0}, Lcom/android/fileexplorer/service/IDirParse;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_cf} :catch_d0

    goto :goto_e6

    :catch_d0
    move-exception v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/Log;->getStackTraceString(Ljava/lang/Exception;)Ljava/lang/String;

    goto :goto_e6

    :cond_d5
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$4$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$4$1;-><init>(Lcom/android/fileexplorer/fragment/FileFragment$4;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    goto :goto_e6

    :cond_de
    new-instance v0, Lcom/android/fileexplorer/fragment/FileFragment$4$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/fragment/FileFragment$4$2;-><init>(Lcom/android/fileexplorer/fragment/FileFragment$4;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :cond_e6
    :goto_e6
    return-void

    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0
.end method
