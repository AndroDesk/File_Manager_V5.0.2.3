.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MirrorFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received broadcast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MirrorFileFragment"

    invoke-static {v0, p2}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

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

    if-eqz p1, :cond_54

    :cond_4a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    :cond_54
    return-void
.end method
