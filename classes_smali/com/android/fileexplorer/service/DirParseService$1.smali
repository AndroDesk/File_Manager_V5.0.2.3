.class Lcom/android/fileexplorer/service/DirParseService$1;
.super Lcom/android/fileexplorer/service/IDirParse$Stub;
.source "DirParseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/service/DirParseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DirParseService;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/service/IDirParse$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public queryDirInfo(Ljava/util/List;Lcom/android/fileexplorer/service/IQueryCallBack;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/fileexplorer/service/IQueryCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4f

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_4f

    .line 10
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_31

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 31
    new-instance v2, Ljava/io/File;

    .line 33
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_12

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_12

    .line 50
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_46

    .line 56
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const-string v0, "empty dir list"

    .line 62
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz p2, :cond_45

    .line 67
    invoke-interface {p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    .line 70
    :cond_45
    return-void

    .line 71
    :cond_46
    new-instance p1, Lcom/android/fileexplorer/service/DirParseService$1$1;

    .line 73
    invoke-direct {p1, p0, p2, v0}, Lcom/android/fileexplorer/service/DirParseService$1$1;-><init>(Lcom/android/fileexplorer/service/DirParseService$1;Lcom/android/fileexplorer/service/IQueryCallBack;Ljava/util/List;)V

    .line 76
    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 79
    return-void

    .line 80
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    const-string v0, "empty input list"

    .line 86
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p2, :cond_5d

    .line 91
    invoke-interface {p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    .line 94
    :cond_5d
    return-void
.end method
