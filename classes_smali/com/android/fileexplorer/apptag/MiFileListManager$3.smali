.class Lcom/android/fileexplorer/apptag/MiFileListManager$3;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Lcom/android/fileexplorer/util/CollectionUtils$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFileItems(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/util/CollectionUtils$Task<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

.field public final synthetic val$mergeMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$3;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    iput-object p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$3;->val$mergeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$3;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    iget-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$3;->val$mergeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1, v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$600(Lcom/android/fileexplorer/apptag/MiFileListManager;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method
