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
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onOneHopShare(ILjava/lang/String;I)Z
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onOneHopShare receiver deviceType:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ";btMac:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ";oneHopVersion:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "FileExplorerTabActivity"

    .line 36
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/fileexplorer/responsive/ResponsiveStateUtil;->isSmallWindowMode(Landroid/content/Context;)Z

    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x0

    .line 50
    if-nez v0, :cond_a6

    .line 52
    invoke-static {}, Lcom/android/fileexplorer/util/ActivityCompat;->isInMultiWindowMode()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3a

    .line 58
    goto :goto_a6

    .line 59
    :cond_3a
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->isToBackground()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_46

    .line 65
    const-string p1, "onOneHopShare is stop"

    .line 67
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return v2

    .line 71
    :cond_46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    const/16 v3, 0x1e

    .line 75
    if-lt v0, v3, :cond_74

    .line 77
    const-string v0, "onOneHopShare DisplayId: "

    .line 79
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v0

    .line 83
    iget-object v3, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 85
    invoke-virtual {v3}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 112
    move-result v0

    .line 113
    const/4 v3, 0x1

    .line 114
    if-le v0, v3, :cond_74

    .line 116
    return v2

    .line 117
    :cond_74
    new-instance v0, Lcom/android/fileexplorer/event/OneHopShareEvent;

    .line 119
    invoke-direct {v0, p1, p2, p3}, Lcom/android/fileexplorer/event/OneHopShareEvent;-><init>(ILjava/lang/String;I)V

    .line 122
    const-string p1, "onOneHopShare setValue before"

    .line 124
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$11;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 129
    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$200(Lcom/android/fileexplorer/FileExplorerTabActivity;)Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;

    .line 132
    move-result-object p1

    .line 133
    iget-object p1, p1, Lcom/android/fileexplorer/viewmodel/FileExpolorerViewModel;->oneHopShareLiveData:Landroidx/lifecycle/q;

    .line 135
    invoke-virtual {p1, v0}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string p2, "onOneHopShare getValue :"

    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData()Z

    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/android/fileexplorer/event/OneHopShareEvent;->isSelectData()Z

    .line 165
    move-result p1

    .line 166
    return p1

    .line 167
    :cond_a6
    :goto_a6
    const-string p1, "onOneHopShare is stop cause:InFreeFormWindow"

    .line 169
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v2
.end method
