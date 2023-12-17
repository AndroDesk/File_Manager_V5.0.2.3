.class public Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;
.super Landroid/os/AsyncTask;
.source "FileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileExplorerTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlePrivacyPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mPrivacyPolicy:Ljava/lang/String;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/FileExplorerTabActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/FileExplorerTabActivity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 3
    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "fileexplorer"

    invoke-static {p1, v1, v0}, Lcom/android/fileexplorer/util/PrivacyPolicyUtil;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mPrivacyPolicy:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mPrivacyPolicy:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$300(Lcom/android/fileexplorer/FileExplorerTabActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mReturnVal:Ljava/lang/String;

    .line 6
    :cond_36
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mReturnVal:Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/FileExplorerTabActivity$HandlePrivacyPolicy;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/FileExplorerTabActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/FileExplorerTabActivity;->access$400(Lcom/android/fileexplorer/FileExplorerTabActivity;)V

    :cond_18
    return-void
.end method
