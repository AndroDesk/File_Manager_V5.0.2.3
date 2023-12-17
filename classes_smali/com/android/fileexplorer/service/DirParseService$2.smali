.class Lcom/android/fileexplorer/service/DirParseService$2;
.super Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack$Stub;
.source "DirParseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/DirParseService;->usingCleanMaster(Ljava/util/List;ILcom/android/fileexplorer/service/IQueryCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/service/DirParseService;

.field public final synthetic val$finalCount:I

.field public final synthetic val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$2;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 5
    iput p3, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$finalCount:I

    .line 7
    invoke-direct {p0}, Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "onQueryFinish"

    .line 14
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    goto :goto_1a

    .line 18
    :cond_11
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "onQueryFinish: observer is null"

    .line 24
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_1a
    return-void
.end method

.method public onQueryItem(Ljava/lang/String;I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$finalCount:I

    .line 7
    add-int/2addr p2, v1

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItem(Ljava/lang/String;I)Z

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string p2, "onQueryItem: observer is null, stop query"

    .line 19
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    goto :goto_11

    .line 9
    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    const-string p2, "onQueryItemEnd: observer is null"

    .line 15
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_11
    return-void
.end method

.method public onStartQuery(I)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onStartQuery with total items："

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
