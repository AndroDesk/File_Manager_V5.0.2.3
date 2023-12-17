.class Lcom/android/fileexplorer/util/InstallAPKHelper$1;
.super Ljava/lang/Object;
.source "InstallAPKHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/InstallAPKHelper;->showInstallFromMarketDialog(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$installPathInROM:Ljava/lang/String;

.field public final synthetic val$isFromROMToInstallApk:Z

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$isFromROMToInstallApk:Z

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$packageName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$isFromROMToInstallApk:Z

    .line 3
    if-eqz p1, :cond_16

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    .line 7
    if-eqz p1, :cond_16

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/util/InstallAPKHelper;->existInstallApkInROM(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_16

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/InstallAPKHelper;->installFromROM(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    .line 25
    iget-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$packageName:Ljava/lang/String;

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/InstallAPKHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    :goto_1d
    return-void
.end method
