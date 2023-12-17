.class Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;
.super Landroid/os/Handler;
.source "SmbDeviceSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "SmbDeviceSearchManager"

    const-string v1, "Handle smb device search done***"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_33

    :cond_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_22

    const-string v0, "searched_smb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_22
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    invoke-static {v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$200(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$300(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Ljava/util/List;Ljava/util/List;Z)V

    :goto_33
    return-void
.end method
