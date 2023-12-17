.class Lcom/android/fileexplorer/FileExplorerTabActivity$15;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Lmiuix/navigator/adapter/CategoryAdapter$EditListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->lambda$createOtherNavigation$2(Lmiuix/navigator/Navigator;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$15;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$15;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$502(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z

    :try_start_6
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$15;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$600(Lcom/android/fileexplorer/FileExplorerTabActivity;Lmiuix/navigator/adapter/CategoryAdapter;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "FileExplorerTabActivity"

    const-string v0, "onFinishEdit error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    return-void
.end method

.method public onStartEdit(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/navigator/adapter/CategoryAdapter<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$15;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$502(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z

    return-void
.end method
