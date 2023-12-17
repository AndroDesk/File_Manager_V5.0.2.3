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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DirParseService;Lcom/android/fileexplorer/service/IQueryCallBack;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/service/DirParseService$2;->this$0:Lcom/android/fileexplorer/service/DirParseService;

    iput-object p2, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    iput p3, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$finalCount:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryFinish()V

    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryFinish"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_11
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onQueryFinish: observer is null"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public onQueryItem(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$finalCount:I

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItem(Ljava/lang/String;I)Z

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onQueryItem: observer is null, stop query"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/service/DirParseService$2;->val$observer:Lcom/android/fileexplorer/service/IQueryCallBack;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/service/IQueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_8
    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onQueryItemEnd: observer is null"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public onStartQuery(I)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/service/DirParseService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartQuery with total items："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
