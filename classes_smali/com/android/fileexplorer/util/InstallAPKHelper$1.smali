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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$isFromROMToInstallApk:Z

    iput-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$isFromROMToInstallApk:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    if-eqz p1, :cond_16

    invoke-static {p1}, Lcom/android/fileexplorer/util/InstallAPKHelper;->existInstallApkInROM(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$installPathInROM:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/InstallAPKHelper;->installFromROM(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    :cond_16
    iget-object p1, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/fileexplorer/util/InstallAPKHelper$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/InstallAPKHelper;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
