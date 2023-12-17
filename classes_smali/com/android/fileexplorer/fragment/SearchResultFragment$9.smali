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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 11
    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Landroid/widget/EditText;

    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {p4}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    move-result p4

    .line 19
    invoke-static {p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2002(Lcom/android/fileexplorer/fragment/SearchResultFragment;I)I

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p3

    .line 26
    const/4 p4, 0x0

    .line 27
    if-eqz p3, :cond_74

    .line 29
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 31
    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_25

    .line 37
    goto :goto_74

    .line 38
    :cond_25
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 40
    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_35

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 51
    invoke-static {p1, p2, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    .line 54
    :cond_35
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 56
    sget-object p3, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 58
    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 61
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 63
    const-string p3, ""

    .line 65
    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 70
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 77
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 79
    const/4 p3, 0x1

    .line 80
    invoke-static {p1, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2402(Lcom/android/fileexplorer/fragment/SearchResultFragment;Z)Z

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 85
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2500(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileSearchRecyclerAdapter;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 94
    sget-object p3, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 96
    invoke-static {p1, p2, p3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2600(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 99
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 105
    invoke-static {p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->cancel(Landroid/app/Activity;)V

    .line 116
    goto :goto_a5

    .line 117
    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 119
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_a5

    .line 129
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 131
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_92

    .line 137
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 139
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 142
    move-result-object p3

    .line 143
    invoke-static {p1, p2, p3, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1800(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V

    .line 146
    goto :goto_97

    .line 147
    :cond_92
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 149
    invoke-static {p1, p2, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Z)V

    .line 152
    :goto_97
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 154
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1002(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$9;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 159
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 166
    :cond_a5
    :goto_a5
    return-void
.end method
