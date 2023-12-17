.class Lcom/android/fileexplorer/fragment/FileFragment$7;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->showLoading(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    .line 5
    if-eqz v1, :cond_13

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v1, v2, :cond_f

    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 v1, 0x0

    .line 17
    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    .line 20
    :cond_13
    return-void
.end method
