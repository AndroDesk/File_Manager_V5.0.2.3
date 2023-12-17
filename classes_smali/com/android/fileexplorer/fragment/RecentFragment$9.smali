.class Lcom/android/fileexplorer/fragment/RecentFragment$9;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->showCDDTipsIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$9;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/android/fileexplorer/model/SettingManager;->setShowCDD(Z)V

    .line 8
    return-void
.end method
