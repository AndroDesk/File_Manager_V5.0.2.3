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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

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

    const-string p1, "title"

    const-string p2, ""

    invoke-static {p1, p2}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-direct {p2}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;-><init>()V

    sget-object p3, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->SearchResult:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->id(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->args(Landroid/os/Bundle;)Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    move-result-object p2

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    const/16 p3, 0x8

    goto :goto_10

    :cond_f
    const/4 p3, 0x0

    :goto_10
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView$1;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;->access$000(Lcom/android/fileexplorer/mirror/view/MirrorTopNavigationView;)Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->get_stack_model:Landroidx/lifecycle/q;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method
