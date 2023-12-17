.class Lcom/android/fileexplorer/util/MiDriveUtils$1;
.super Ljava/lang/Object;
.source "MiDriveUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/MiDriveUtils;->showInstallMiDriverDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/MiDriveUtils$1;->val$context:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->existInstallApkInROM()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_c

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/util/MiDriveUtils$1;->val$context:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->installMiDriveFromROM(Landroid/content/Context;)V

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iget-object p1, p0, Lcom/android/fileexplorer/util/MiDriveUtils$1;->val$context:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$100(Landroid/content/Context;)V

    .line 18
    :goto_11
    return-void
.end method
