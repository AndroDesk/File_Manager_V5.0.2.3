.class Lcom/android/fileexplorer/view/InformationDialog$2;
.super Lcom/android/cloud/task/QueryFilePathTask;
.source "InformationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/InformationDialog;->asyncGetFilePath(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/InformationDialog;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$2;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iput-object p4, p0, Lcom/android/fileexplorer/view/InformationDialog$2;->val$view:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/android/cloud/task/QueryFilePathTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/android/cloud/task/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$2;->val$view:Landroid/view/View;

    const v0, 0x7f032c6d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182df3

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_40
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/InformationDialog$2;->onPostExecute(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
