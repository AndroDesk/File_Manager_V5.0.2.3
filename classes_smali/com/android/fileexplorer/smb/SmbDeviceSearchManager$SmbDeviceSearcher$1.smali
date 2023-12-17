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
.method public constructor <init>(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    const-string v0, "SmbDeviceSearchManager"

    .line 3
    const-string v1, "Handle smb device search done***"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    const/16 v1, 0x3e8

    .line 12
    if-eq v0, v1, :cond_11

    .line 14
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 17
    goto :goto_33

    .line 18
    :cond_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    if-eqz p1, :cond_22

    .line 29
    const-string v0, "searched_smb"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 34
    move-result-object v0

    .line 35
    :cond_22
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 39
    invoke-static {v1}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$200(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;)Ljava/util/ArrayList;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    iget-object v1, p0, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher$1;->this$0:Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v0, p1, v2}, Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;->access$300(Lcom/android/fileexplorer/smb/SmbDeviceSearchManager$SmbDeviceSearcher;Ljava/util/List;Ljava/util/List;Z)V

    .line 52
    :goto_33
    return-void
.end method
