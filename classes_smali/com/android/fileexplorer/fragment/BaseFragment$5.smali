.class Lcom/android/fileexplorer/fragment/BaseFragment$5;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseFragment;->showDisplaySettingFragment(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseFragment$5;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/BaseFragment$5;->this$0:Lcom/android/fileexplorer/fragment/BaseFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/BaseFragment;->access$302(Lcom/android/fileexplorer/fragment/BaseFragment;Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;)Lcom/android/fileexplorer/fragment/DisplaySettingDialogFragment;

    .line 7
    return-void
.end method
