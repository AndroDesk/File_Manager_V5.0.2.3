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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_31

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2a

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/android/fileexplorer/util/AppUtils;->showSoftInput(Landroid/app/Activity;ZLandroid/widget/EditText;)V

    goto :goto_2f

    :cond_2a
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$8;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p2, p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    :goto_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    return p3
.end method
