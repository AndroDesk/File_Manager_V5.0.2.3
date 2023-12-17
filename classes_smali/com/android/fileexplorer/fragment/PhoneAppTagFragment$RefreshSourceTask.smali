.class Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;
.super Landroid/os/AsyncTask;
.source "PhoneAppTagFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshSourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;-><init>(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAppFileGroupItems(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/apptag/FileGroupDbManager$LoadResultHolder;->fileItemGroups:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getAppTagList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$400(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Lcom/android/fileexplorer/adapter/AppTagListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const v1, 0x7f1102d1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$300(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;ZI)V

    return-void
.end method

.method public onPreExecute()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$000(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment$RefreshSourceTask;->this$0:Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;

    const/4 v1, 0x1

    const v2, 0x7f110180

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;->access$300(Lcom/android/fileexplorer/fragment/PhoneAppTagFragment;ZI)V

    :cond_15
    return-void
.end method
