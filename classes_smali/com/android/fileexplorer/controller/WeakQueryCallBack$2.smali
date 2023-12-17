.class Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;
.super Ljava/lang/Object;
.source "WeakQueryCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/WeakQueryCallBack;->onQueryFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$2;->this$0:Lcom/android/fileexplorer/controller/WeakQueryCallBack;

    invoke-static {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack;->access$000(Lcom/android/fileexplorer/controller/WeakQueryCallBack;)Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;->onQueryFinish()V

    :cond_11
    return-void
.end method
