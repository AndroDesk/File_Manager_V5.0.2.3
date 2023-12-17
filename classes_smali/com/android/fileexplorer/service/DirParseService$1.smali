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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$1;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    invoke-direct {p0}, Lcom/android/fileexplorer/service/IDirParse$Stub;-><init>()V

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

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4f

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty dir list"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_45

    invoke-interface {p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    :cond_45
    return-void

    :cond_46
    new-instance p1, Lcom/android/fileexplorer/service/DirParseService$1$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/fileexplorer/service/DirParseService$1$1;-><init>(Lcom/android/fileexplorer/service/DirParseService$1;Lcom/android/fileexplorer/service/IQueryCallBack;Ljava/util/List;)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    return-void

    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty input list"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5d

    invoke-interface {p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    :cond_5d
    return-void
.end method
