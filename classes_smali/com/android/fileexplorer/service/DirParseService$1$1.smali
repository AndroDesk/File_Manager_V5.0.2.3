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
.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService$1;Lcom/android/fileexplorer/service/IQueryCallBack;Ljava/util/List;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/service/IQueryCallBack;->onStartQuery(I)V

    .line 14
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/service/ParseUtil;->getInstance()Lcom/android/fileexplorer/service/ParseUtil;

    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    .line 26
    iget-object v3, v3, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 28
    iget-object v4, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/service/ParseUtil;->preFetchAppNamesMapByPaths(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$dirs:Ljava/util/List;

    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v3

    .line 39
    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_66

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 51
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getRelativePath(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_26

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v7, "/"

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v6}, Lcom/android/fileexplorer/service/ParseUtil;->getAppNameByPath(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_62

    .line 84
    iget-object v5, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 86
    if-eqz v5, :cond_5f

    .line 88
    invoke-interface {v5, v4, v1}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItem(Ljava/lang/String;I)Z

    .line 91
    iget-object v5, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 93
    invoke-interface {v5, v4, v6}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_26

    .line 99
    :cond_62
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_26

    .line 103
    :cond_66
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_7d

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    const-string v1, "empty list"

    .line 115
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 120
    if-eqz v0, :cond_a4

    .line 122
    invoke-interface {v0}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7c} :catch_a0

    .line 125
    goto :goto_a4

    .line 126
    :cond_7d
    :try_start_7d
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    .line 128
    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 130
    invoke-static {v2}, Lcom/android/fileexplorer/service/DirParseService;->access$100(Lcom/android/fileexplorer/service/DirParseService;)Z

    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_91

    .line 136
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    .line 138
    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 140
    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 142
    invoke-static {v2, v0, v1, v3}, Lcom/android/fileexplorer/service/DirParseService;->access$200(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V

    .line 145
    goto :goto_a4

    .line 146
    :cond_91
    iget-object v2, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->this$1:Lcom/android/fileexplorer/service/DirParseService$1;

    .line 148
    iget-object v2, v2, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 150
    iget-object v3, p0, Lcom/android/fileexplorer/service/DirParseService$1$1;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 152
    invoke-static {v2, v0, v1, v3}, Lcom/android/fileexplorer/service/DirParseService;->access$300(Lcom/android/fileexplorer/service/DirParseService;Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9a} :catch_9b

    .line 155
    goto :goto_a4

    .line 156
    :catch_9b
    move-exception v0

    .line 157
    :try_start_9c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_a0

    .line 160
    goto :goto_a4

    .line 161
    :catch_a0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    :cond_a4
    :goto_a4
    return-void
.end method
