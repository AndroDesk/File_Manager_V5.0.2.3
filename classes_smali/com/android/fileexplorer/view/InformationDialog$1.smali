.class Lcom/android/fileexplorer/view/InformationDialog$1;
.super Ljava/lang/Object;
.source "InformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/InformationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/InformationDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/InformationDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v0, p1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "folder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v0, v0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v1, v1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v0, v0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    iget-object v1, v1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void

    :cond_57
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez p1, :cond_b5

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    goto :goto_83

    :cond_72
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    :goto_83
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/InformationDialog;->access$184(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/Object;)Ljava/lang/String;

    :cond_96
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a0
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_b5
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
