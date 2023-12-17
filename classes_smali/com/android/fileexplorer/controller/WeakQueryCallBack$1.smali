.class Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;
.super Ljava/lang/Object;
.source "WeakQueryCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/WeakQueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

.field public final synthetic val$dirPath:Ljava/lang/String;

.field public final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$dirPath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$pkgName:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$dirPath:Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$pkgName:Ljava/lang/String;

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_15
    return-void
.end method
