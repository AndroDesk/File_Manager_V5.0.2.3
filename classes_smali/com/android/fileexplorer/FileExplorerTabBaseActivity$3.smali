.class Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;
.super Ljava/lang/Object;
.source "FileExplorerTabBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->showDataConsumptionHint()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity$3;->this$0:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/statistics/Statistics;->init()V

    .line 4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setDataConsumptionSwitch(Z)V

    .line 11
    return-void
.end method
