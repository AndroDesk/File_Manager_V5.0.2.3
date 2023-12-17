.class Lcom/android/fileexplorer/fragment/SearchResultFragment$8;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x3

    .line 3
    if-ne p2, v0, :cond_31

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_2a

    .line 27
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 35
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 45
    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    .line 48
    :goto_2f
    const/4 p1, 0x1

    .line 49
    return p1

    .line 50
    :cond_31
    return p3
.end method
