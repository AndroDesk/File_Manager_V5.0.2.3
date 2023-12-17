.class Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2$1;
.super Ljava/lang/Object;
.source "DocSnapShotLoaderV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2$1;->this$1:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2$1;->this$1:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;

    iget-object v0, v0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;->access$202(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2$1;->this$1:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;

    iget-object v0, v0, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2$2;->this$0:Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;

    invoke-static {v0}, Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;->access$300(Lcom/android/fileexplorer/service/DocSnapShotLoaderV2;)V

    return-void
.end method
