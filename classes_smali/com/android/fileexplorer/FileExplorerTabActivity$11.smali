.class Lcom/android/fileexplorer/FileExplorerTabActivity$11;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->registerOneHopShareReceiver()V
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

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneHopShare(ILjava/lang/String;I)Z
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOneHopShare receiver deviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";btMac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";oneHopVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileExplorerTabActivity"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a6

    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_a6

    :cond_3a
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->isToBackground()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string p1, "onOneHopShare is stop"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_74

    const-string v0, "onOneHopShare DisplayId: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_74

    return v2

    :cond_74
    new-instance v0, Lcom/android/fileexplorer/event/OneHopShareEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/fileexplorer/event/OneHopShareEvent;-><init>(ILjava/lang/String;I)V

    const-string p1, "onOneHopShare setValue before"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$200(Lcom/android/fileexplorer/FileExplorerTabActivity;)Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onOneHopShare getValue :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData()Z

    move-result p1

    return p1

    :cond_a6
    :goto_a6
    const-string p1, "onOneHopShare is stop cause:InFreeFormWindow"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
