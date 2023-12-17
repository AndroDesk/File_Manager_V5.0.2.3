.class Lcom/android/fileexplorer/FileExplorerApplication$1;
.super Ljava/lang/Object;
.source "FileExplorerApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerApplication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerApplication;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerApplication$1;->this$0:Lcom/android/fileexplorer/FileExplorerApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageHelper;->isDiskHasEnoughSpace()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    :cond_d
    return-void
.end method
