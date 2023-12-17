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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string v0, "00019"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$11;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    return-void
.end method
