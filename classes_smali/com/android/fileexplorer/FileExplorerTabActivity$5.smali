.class Lcom/android/fileexplorer/FileExplorerTabActivity$5;
.super Ljava/lang/Object;
.source "FileExplorerTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;->showPrivacyPolicyUpdateDialog()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$5;->this$0:Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setPrivacySwitch(Z)V

    .line 5
    return-void
.end method
