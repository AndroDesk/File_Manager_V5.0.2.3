.class Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;
.super Ljava/lang/Object;
.source "MirrorTopNavigationView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

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

    .line 1
    const-string p1, "title"

    .line 3
    const-string p2, ""

    .line 5
    invoke-static {p1, p2}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 11
    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    .line 14
    sget-object p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 16
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 26
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 29
    move-result-object p2

    .line 30
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 32
    invoke-virtual {p2, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Landroid/widget/ImageView;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_f

    .line 13
    const/16 p3, 0x8

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p3, 0x0

    .line 17
    :goto_10
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    new-instance p2, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    invoke-direct {p2, p3}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3a

    .line 46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    .line 48
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->get_stack_model:Landroidx/lifecycle/q;

    .line 54
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 59
    :cond_3a
    return-void
.end method
