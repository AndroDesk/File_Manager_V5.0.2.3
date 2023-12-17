.class public Lcom/android/fileexplorer/fragment/file/task/SortTask;
.super Landroid/os/AsyncTask;
.source "SortTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;
    }
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
.field private final mCallback:Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;

.field private final mSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mSource:Ljava/util/List;

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mSource:Ljava/util/List;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/SortTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    new-instance p1, Lcom/android/fileexplorer/controller/FabPreference;

    invoke-direct {p1}, Lcom/android/fileexplorer/controller/FabPreference;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->viewMode:I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    iput-boolean v0, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/controller/FabPreferenceManager;->getFabPreference(Ljava/lang/String;Lcom/android/fileexplorer/controller/FabPreference;)Lcom/android/fileexplorer/controller/FabPreference;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mSource:Ljava/util/List;

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v1

    iget v2, p1, Lcom/android/fileexplorer/controller/FabPreference;->sortMethod:I

    aget-object v1, v1, v2

    iget-boolean p1, p1, Lcom/android/fileexplorer/controller/FabPreference;->isReverse:Z

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter;->sort(Ljava/util/List;Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;Z)V

    :cond_31
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/task/SortTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mCallback:Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/task/SortTask;->mSource:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;->onComplete(Ljava/util/List;)V

    :cond_c
    return-void
.end method
