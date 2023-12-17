.class Lcom/android/fileexplorer/fragment/SearchResultFragment$10;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 p1, 0x43

    if-ne p2, p1, :cond_4f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    return p2

    :cond_25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)I

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/search/SearchTagView;->setChecked(Z)V

    :cond_42
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I

    :cond_4f
    const/4 p1, 0x0

    return p1
.end method
