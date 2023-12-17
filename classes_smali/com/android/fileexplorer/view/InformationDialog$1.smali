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
.method public constructor <init>(Lcom/android/fileexplorer/view/InformationDialog;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 5
    if-eqz v0, :cond_57

    .line 7
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getType()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "folder"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2c

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 27
    iget-object v0, v0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 29
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 35
    iget-object v1, v1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 37
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_51

    .line 45
    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 47
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_51

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 59
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    .line 62
    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 65
    iget-object v0, v0, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 67
    invoke-virtual {v0}, Lcom/android/cloud/bean/CloudFileInfo;->getParentId()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 73
    iget-object v1, v1, Lcom/android/fileexplorer/view/InformationDialog;->mCloudFileInfo:Lcom/android/cloud/bean/CloudFileInfo;

    .line 75
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/model/Util;->scrollToCloudTab(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 84
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 87
    return-void

    .line 88
    :cond_57
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 91
    move-result-object p1

    .line 92
    iget p1, p1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 94
    if-nez p1, :cond_b5

    .line 96
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 98
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 101
    move-result-object p1

    .line 102
    iget-boolean p1, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 104
    if-eqz p1, :cond_72

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 108
    invoke-static {p1}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 111
    move-result-object p1

    .line 112
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 114
    goto :goto_83

    .line 115
    :cond_72
    new-instance p1, Ljava/io/File;

    .line 117
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 119
    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$200(Lcom/android/fileexplorer/view/InformationDialog;)Lcom/android/fileexplorer/model/FileInfo;

    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 125
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    :goto_83
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 134
    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_96

    .line 146
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 148
    invoke-static {v0, v1}, Lcom/android/fileexplorer/view/InformationDialog;->access$184(Lcom/android/fileexplorer/view/InformationDialog;Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    :cond_96
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_a0

    .line 157
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    :cond_a0
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 163
    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$100(Lcom/android/fileexplorer/view/InformationDialog;)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_b5

    .line 173
    iget-object v0, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 175
    invoke-static {v0}, Lcom/android/fileexplorer/view/InformationDialog;->access$000(Lcom/android/fileexplorer/view/InformationDialog;)Landroid/app/Activity;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    :cond_b5
    iget-object p1, p0, Lcom/android/fileexplorer/view/InformationDialog$1;->this$0:Lcom/android/fileexplorer/view/InformationDialog;

    .line 184
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 187
    return-void
.end method
