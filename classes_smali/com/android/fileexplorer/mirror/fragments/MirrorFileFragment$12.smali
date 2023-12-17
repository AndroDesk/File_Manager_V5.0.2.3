.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showStorageNotEnoughHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/view/ToastTextView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    const-string v0, "00019"

    .line 7
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Util;->enterClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$12;->val$toastTextView:Lcom/android/fileexplorer/view/ToastTextView;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/ToastTextView;->dismiss()V

    .line 15
    return-void
.end method
