.class Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FileExplorerTabBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileExplorerTabBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;->this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v0, "receive action: "

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    const-string v0, "FileExplorerTabBaseActivity"

    .line 24
    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_4a

    .line 35
    const-string p2, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_4a

    .line 43
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 49
    if-nez p2, :cond_4a

    .line 51
    const-string p2, "android.intent.action.MEDIA_REMOVED"

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p2

    .line 57
    if-nez p2, :cond_4a

    .line 59
    const-string p2, "android.intent.action.MEDIA_EJECT"

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_4a

    .line 67
    const-string p2, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5e

    .line 75
    :cond_4a
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;->this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;

    .line 87
    invoke-direct {p2, p0}, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1$1;-><init>(Lcom/android/fileexplorer/FileExplorerTabBaseActivity$1;)V

    .line 90
    const-wide/16 v0, 0x1f4

    .line 92
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :cond_5e
    return-void
.end method
