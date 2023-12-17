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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    const/16 p1, 0x43

    .line 3
    if-ne p2, p1, :cond_4f

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_4f

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 13
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_4f

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchTagView;->isChecked()Z

    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x1

    .line 30
    if-eqz p1, :cond_25

    .line 32
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 37
    return p2

    .line 38
    :cond_25
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_42

    .line 50
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 52
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)I

    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_42

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 60
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/search/SearchTagView;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/search/SearchTagView;->setChecked(Z)V

    .line 67
    :cond_42
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$10;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 69
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    .line 76
    move-result p2

    .line 77
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I

    .line 80
    :cond_4f
    const/4 p1, 0x0

    .line 81
    return p1
.end method
