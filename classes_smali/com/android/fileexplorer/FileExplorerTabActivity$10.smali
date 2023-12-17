.class Lcom/android/fileexplorer/FileExplorerTabActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "FileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->registerStorageReceiver()V
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

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "usb receive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileExplorerTabActivity"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    const-string p2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    :cond_4a
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$100(Lcom/android/fileexplorer/FileExplorerTabActivity;)Z

    move-result p1

    if-eqz p1, :cond_53

    return-void

    :cond_53
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$102(Lcom/android/fileexplorer/FileExplorerTabActivity;Z)Z

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$10;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;

    invoke-direct {p2, p0}, Lcom/android/fileexplorer/FileExplorerTabActivity$10$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabActivity$10;)V

    const-wide/16 v0, 0x384

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6d
    return-void
.end method
