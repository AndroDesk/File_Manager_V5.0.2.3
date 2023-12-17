.class Lcom/android/fileexplorer/controller/IntentBuilder$8;
.super Ljava/lang/Object;
.source "IntentBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/controller/IntentBuilder;->viewArchive(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic val$currentPath:Ljava/lang/String;

.field public final synthetic val$decompressTo:Ljava/lang/String;

.field public final synthetic val$decompressToHere:Ljava/lang/String;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$selectItems:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressToHere:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 11
    iput-object p6, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressTo:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressToHere:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    .line 5
    aget-object v1, v1, p2

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_35

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    .line 15
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 20
    move-result p2

    .line 21
    if-lez p2, :cond_63

    .line 23
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_63

    .line 31
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 34
    move-result-object p2

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    .line 37
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 40
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 44
    invoke-direct {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 47
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$currentPath:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->startDecompressThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_63

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$decompressTo:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$selectItems:[Ljava/lang/CharSequence;

    .line 58
    aget-object p2, v1, p2

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_63

    .line 66
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 73
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 76
    move-result-object p2

    .line 77
    iget-object v0, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$filePath:Ljava/lang/String;

    .line 79
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/android/fileexplorer/controller/IntentBuilder$8;->val$activity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 84
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 87
    move-result-object v0

    .line 88
    const v1, 0x7f110110

    .line 91
    const v2, 0x7f110106

    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/model/Util;->pickFolder(Landroid/app/Activity;IIZZZ)V

    .line 100
    :cond_63
    :goto_63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
