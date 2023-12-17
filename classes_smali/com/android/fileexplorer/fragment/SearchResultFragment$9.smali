.class Lcom/android/fileexplorer/fragment/SearchResultFragment$9;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_74

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result p3

    if-eqz p3, :cond_25

    goto :goto_74

    :cond_25
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1, p2, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    :cond_35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    sget-object p3, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    const-string p3, ""

    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    sget-object p3, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2600(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    goto :goto_a5

    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    goto :goto_97

    :cond_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1, p2, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    :goto_97
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_a5
    :goto_a5
    return-void
.end method
