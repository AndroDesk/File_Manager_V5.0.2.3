.class Lcom/android/fileexplorer/activity/ViewLargeActivity$1;
.super Landroid/os/AsyncTask;
.source "ViewLargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ViewLargeActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/android/fileexplorer/model/FileWithExt;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_aa

    :cond_21
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2e
    if-lez v0, :cond_7a

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_37

    return-object v1

    :cond_37
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileWithExt;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6a

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/FileExplorer/.safebox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_77

    :cond_6a
    iget-object v5, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/FileWithExt;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$100(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_77

    return-object v4

    :cond_77
    :goto_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_7a
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$202(Lcom/android/fileexplorer/activity/ViewLargeActivity;I)I

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0, v2}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$202(Lcom/android/fileexplorer/activity/ViewLargeActivity;I)I

    :cond_9b
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/util/FavUtil;->getFavLocationByFileWithExt(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$302(Lcom/android/fileexplorer/activity/ViewLargeActivity;Ljava/util/HashSet;)Ljava/util/HashSet;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_aa
    :goto_aa
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$400(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initList result is null, finish."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_13
    const/16 v0, 0x11

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$502(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->startPermissionActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$502(Lcom/android/fileexplorer/activity/ViewLargeActivity;Z)Z

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_98

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$000(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Li1/a;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$600(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Lcom/android/fileexplorer/adapter/ViewLargeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/ViewLargeAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_83

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1, v1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$202(Lcom/android/fileexplorer/activity/ViewLargeActivity;I)I

    :cond_83
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$700(Lcom/android/fileexplorer/activity/ViewLargeActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$200(Lcom/android/fileexplorer/activity/ViewLargeActivity;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity;->access$800(Lcom/android/fileexplorer/activity/ViewLargeActivity;)V

    goto :goto_9d

    :cond_98
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->this$0:Lcom/android/fileexplorer/activity/ViewLargeActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_9d
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/activity/ViewLargeActivity$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
