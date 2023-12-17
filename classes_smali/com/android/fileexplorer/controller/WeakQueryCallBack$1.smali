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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$dirPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$dirPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
