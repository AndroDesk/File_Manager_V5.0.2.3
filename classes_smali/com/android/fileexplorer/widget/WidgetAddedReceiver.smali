.class public Lcom/android/fileexplorer/widget/WidgetAddedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetAddedReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object p2

    .line 5
    const-string v0, "checkedList"

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Ljava/util/List;

    .line 13
    if-eqz p2, :cond_1a

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1a

    .line 21
    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropAllData()V

    .line 24
    invoke-static {p2, p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;)Z

    .line 27
    :cond_1a
    return-void
.end method
