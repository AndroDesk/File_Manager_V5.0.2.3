.class Lcom/android/fileexplorer/fragment/FileFragment$11;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->showStorageNotEnoughHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;

.field public final synthetic val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 5
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "00019"

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    .line 19
    return-void
.end method
