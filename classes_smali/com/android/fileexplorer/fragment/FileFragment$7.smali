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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mBtnOpen:Landroid/widget/Button;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->getModeType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->setOpenViewVisible(Z)V

    :cond_13
    return-void
.end method
