.class Lcom/android/fileexplorer/service/DirParseService$1$1;
.super Ljava/lang/Object;
.source "DirParseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/DirParseService$1;->queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/service/DirParseService$1;

.field public final synthetic val$dirs:Ljava/util/List;

.field public final synthetic val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService$1;Lcom/android/fileexplorer/service/IQueryCallBack;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    iput-object p2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    iput-object p3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/service/IQueryCallBack;->onStartQuery(I)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/fileexplorer/service/ParseUtil;->getInstance()Lcom/android/fileexplorer/service/ParseUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    iget-object v3, v3, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    iget-object v4, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/service/ParseUtil;->preFetchAppNamesMapByPaths(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/fileexplorer/service/ParseUtil;->getAppNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_62

    iget-object v5, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v5, :cond_5f

    invoke-interface {v5, v4, v1}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItem(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    invoke-interface {v5, v4, v6}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v0, :cond_a4

    invoke-interface {v0}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7c} :catch_a0

    goto :goto_a4

    :cond_7d
    :try_start_7d
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    invoke-static {v2}, Lcom/android/fileexplorer/service/DirParseService;->access$100(Lcom/android/fileexplorer/service/DirParseService;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    invoke-static {v2, v0, v1, v3}, Lcom/android/fileexplorer/service/DirParseService;->access$200(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    goto :goto_a4

    :cond_91
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    invoke-static {v2, v0, v1, v3}, Lcom/android/fileexplorer/service/DirParseService;->access$300(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9a} :catch_9b

    goto :goto_a4

    :catch_9b
    move-exception v0

    :try_start_9c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a4
    :goto_a4
    return-void
.end method
