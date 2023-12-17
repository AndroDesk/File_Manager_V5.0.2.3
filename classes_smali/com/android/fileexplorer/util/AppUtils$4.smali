.class Lcom/android/fileexplorer/util/AppUtils$4;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$4;->val$activity:Landroid/app/Activity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setNeedShowPatternDialog(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/util/AppUtils$4;->val$activity:Landroid/app/Activity;

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->launchThisActivity(Landroid/app/Activity;)V

    .line 10
    return-void
.end method
