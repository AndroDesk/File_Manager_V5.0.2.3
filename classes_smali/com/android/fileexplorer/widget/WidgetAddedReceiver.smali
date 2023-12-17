.class public Lcom/android/fileexplorer/widget/WidgetAddedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetAddedReceiver.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "checkedList"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-static {}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->dropAllData()V

    invoke-static {p2, p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;)Z

    :cond_1a
    return-void
.end method
